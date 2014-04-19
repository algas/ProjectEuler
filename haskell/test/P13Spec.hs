module P13Spec where

import           P13
import           Test.Hspec

spec :: Spec
spec = do
    describe "p13" $ do
        it "p13" $
            p13 `shouldBe` 5537376230
