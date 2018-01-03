module Main where

import Test.Hspec

remove :: String -> String
remove s = error "Implement me!!"



main :: IO ()
main = hspec $
  describe "Example Tests" $
    it "should work with example tests" $ do
      remove "Hi!"          `shouldBe` "Hi!"
      remove "Hi! Hi!"      `shouldBe` "Hi Hi!!"
      remove "Hi! Hi! Hi!"  `shouldBe` "Hi Hi Hi!!!"
      remove "Hi! !Hi Hi!"  `shouldBe` "Hi Hi Hi!!!"
      remove "Hi! Hi!! Hi!" `shouldBe` "Hi Hi Hi!!!!"

