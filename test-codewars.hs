module Main where

import Test.Hspec
import Test.QuickCheck

import Text.Printf (printf)
import Data.List;
import Data.List.Split;


breakLines string = splitOn "\n" string

compose :: String -> String -> String
compose s1 s2 = do
  let l1 = breakLines s1
  let l2 = breakLines s2
  let n = length l1
  let u = n - 1
  let convert_at_index x = take (x+1) (l1 !! x) ++ take (n-x) (l2 !! (u-x))
  intercalate "\n" $ map convert_at_index [0..u]


testCompose :: String -> String -> String -> Spec
testCompose s1 s2 s = 
  it (printf "should return compose for s1: %s \n  s2 %s " (show s1) (show s2)) $
    compose s1 s2 `shouldBe` s

main = do
    hspec $ do

    describe "compose" $ do
        testCompose "byGt\nhTts\nRTFF\nCnnI" "jIRl\nViBu\nrWOb\nNkTB"
            "bNkTB\nhTrWO\nRTFVi\nCnnIj"
        testCompose "HXxA\nTGBf\nIPhg\nuUMD" "Hcbj\nqteH\nGbMJ\ngYPW"
            "HgYPW\nTGGbM\nIPhqt\nuUMDH"
        testCompose "tSrJ\nOONy\nsqPF\nxMkB" "hLqw\nEZuh\nmYFl\nzlYf" 
            "tzlYf\nOOmYF\nsqPEZ\nxMkBh"

