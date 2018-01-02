Function Register-Watcher {
    param ($folder, $filter, $name, $changeAction)
    $watcher = New-Object IO.FileSystemWatcher $folder, $filter -Property @{ 
        IncludeSubdirectories = $false
        EnableRaisingEvents = $true
    }

    # $changeAction = [scriptblock]::Create('
    #     $path = $Event.SourceEventArgs.FullPath
    #     $name = $Event.SourceEventArgs.Name
    #     $changeType = $Event.SourceEventArgs.ChangeType
    #     $timeStamp = $Event.TimeGenerated
    #     Write-Host "The file $name was $changeType at $timeStamp"
    #     Add-Content C:\users\wboec\Desktop\test.txt $timeStamp
    # ')

    Register-ObjectEvent $Watcher Changed -SourceIdentifier $name -Action $changeAction
}

$watchername = "HaskellWatcher"
Get-EventSubscriber | ? { $_.SourceIdentifier -eq $watchername} | % { Unregister-Event $_.SubscriptionId }

Register-Watcher $pwd "*.hs" $watchername {
  # $path = $Event.SourceEventArgs.FullPath
  # $name = $Event.SourceEventArgs.Name
  # $changeType = $Event.SourceEventArgs.ChangeType
  # $timeStamp = $Event.TimeGenerated
  # Write-Host "The file $name was $changeType at $timeStamp"

  clear
  Write-Host "Starting  Cabal Test..."
  cabal test | Write-Host
}
