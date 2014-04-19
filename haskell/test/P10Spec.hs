module P10Spec where

import           P10
import           Test.Hspec

spec :: Spec
spec = do
    describe "p10" $ do
        it "p10" $
            p10 `shouldBe` 142913828922

