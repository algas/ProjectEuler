module P8Spec where

import Test.Hspec
import P8

spec :: Spec
spec = do
    describe "p8" $ do
        it "p8" $
            p8 `shouldBe` 40824
