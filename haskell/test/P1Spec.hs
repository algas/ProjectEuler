module P1Spec where

import           P1
import           Test.Hspec

spec :: Spec
spec = do
    describe "p1" $ do
        it "p1" $
            p1 `shouldBe` 233168

