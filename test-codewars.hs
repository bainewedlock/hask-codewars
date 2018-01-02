module Main where

import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "absolute" $ do
    it "test with Hspec" $
      "foo" `shouldBe` "bar"
