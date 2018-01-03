module Main where

import Test.Hspec

remove :: String -> String
remove s = do
  let a = removeExclamationMarks s
  appendExclamationMarks a (length s - length a)

removeExclamationMarks = filter (/= '!')

appendExclamationMarks s n = s ++ (replicate n '!')

main :: IO ()
main = hspec $
  describe "Example Tests" $
    it "should work with example tests" $ do
      remove "Hi!"          `shouldBe` "Hi!"
      remove "Hi! Hi!"      `shouldBe` "Hi Hi!!"
      remove "Hi! Hi! Hi!"  `shouldBe` "Hi Hi Hi!!!"
      remove "Hi! !Hi Hi!"  `shouldBe` "Hi Hi Hi!!!"
      remove "Hi! Hi!! Hi!" `shouldBe` "Hi Hi Hi!!!!"

