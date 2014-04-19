module P14Spec where

import           P14
import           Test.Hspec

spec :: Spec
spec = do
    describe "p14" $ do
        it "p14" $
            p14 `shouldBe` 837799

