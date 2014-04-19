module P15Spec where

import           P15
import           Test.Hspec

spec :: Spec
spec = do
    describe "p15" $ do
        it "p15" $
            p15 `shouldBe` 137846528820
