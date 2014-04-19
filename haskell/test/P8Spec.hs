module P8Spec where

import           P8
import           Test.Hspec

spec :: Spec
spec = do
    describe "p8" $ do
        it "p8" $
            p8 `shouldBe` 40824
