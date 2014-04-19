module P6Spec where

import           P6
import           Test.Hspec

spec ::Spec
spec = do
    describe "p6" $ do
        it "p6" $
            p6 `shouldBe` 25164150
