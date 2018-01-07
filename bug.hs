module Main where
import Test.Hspec
import Test.QuickCheck

main = hspec $ do
  describe "vowelOne" $ do
    it "should work for some examples" $ do
      vowelOne "vowelOne" `shouldBe` "01010101"
      vowelOne "123, arou" `shouldBe` "000001011"

vowelOne = map vowelToBit

vowelToBit c
  | elem c "aeiouyAEIOUY" = '1'
  | otherwise             = '0'
