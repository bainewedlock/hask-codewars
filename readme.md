## First time setup
```
sudo apt-get install inotify-tools
sudo apt-get install haskell-platform
cabal update
cabal install QuickCheck hspec
```

## Autorun tests
```
./autorefresh-test.sh
```


## Run tests
```
cabal test
```


## Compile App
```
cabal install
```
