module P11Spec where

import           P11
import           Test.Hspec

spec :: Spec
spec = do
    describe "p11" $ do
        it "p11" $
            p11 `shouldBe` 70600674

