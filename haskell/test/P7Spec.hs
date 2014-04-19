module P7Spec where

import           P7
import           Test.Hspec

spec :: Spec
spec = do
    describe "p7" $ do
        it "p7" $
            p7 `shouldBe` 104743
