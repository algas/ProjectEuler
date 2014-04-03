module P3Spec where

import           P3
import           Test.Hspec

spec :: Spec
spec = do
    describe "primes" $ do
        it "take 10 primes" $
            take 10 primes `shouldBe` [2,3,5,7,11 ,13,17,19,23,29]
    describe "p3" $ do
        it "p3" $
            p3 `shouldBe` 6857

