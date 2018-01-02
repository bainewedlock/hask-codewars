## First time setup
```
sudo apt-get install inotify-tools
sudo apt-get install haskell-platform
cabal update
cabal install QuickCheck hspec
```

## Coding
```
ghci
:load test-codewars.hs
:main
```


## Run tests
```
cabal test
```


## Compile App
```
cabal install
```


## GHCI Tips
- :l              shortcut for load
- :r              reloads last file
- :set +s         measures time of all function calls
- :{              start multiline input
- :browse         shows type signatures from current module
