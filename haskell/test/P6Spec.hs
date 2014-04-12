module P6Spec where

import Test.Hspec
import P6

spec ::Spec
spec = do
    describe "p6" $ do
        it "p6" $
            p6 `shouldBe` 25164150
