module P7Spec where

import Test.Hspec
import P7

spec :: Spec
spec = do
    describe "p7" $ do
        it "p7" $
            p7 `shouldBe` 104743
