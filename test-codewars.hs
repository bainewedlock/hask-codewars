module Main where

import Test.Hspec
import Test.QuickCheck


foldTo :: Double -> Maybe Int
foldTo distance = error "todo: foldTo"

main :: IO ()
main = hspec $ describe "absolute" $
  it "test with Hspec" $
    "foo" `shouldBe` "bar"

  it "returns a value for positive numbers" $ property $ \(Positive n) ->
    foldTo n `shouldSatisfy` isJust

  it "returns nothing for non-positive numbers" $ property $ 
    -- there's nonzero, there's nonnegative, and there's positive,
    -- but QuickCheck misses nonpositive.
    forAll (fmap (negate . getNonNegative) $ arbitrary ) $ \n ->
      foldTo n `shouldSatisfy` isNothing
