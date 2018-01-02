module Main where

import Test.Hspec

main :: IO ()
main = hspec $
  describe "absolute" $
    it "test with Hspec" $
      "foo" `shouldBe` "bar"

