module P10Spec where

import Test.Hspec
import P10

spec :: Spec
spec = do
    describe "p10" $ do
        it "p10" $
            p10 `shouldBe` 142913828922

