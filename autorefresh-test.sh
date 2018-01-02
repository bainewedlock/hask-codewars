#!/bin/bash
clear
cabal test
while ./sleep_until_modified.sh test-codewars.hs
do
  clear
  cabal test
done
