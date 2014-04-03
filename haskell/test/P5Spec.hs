module P5Spec where

import           P5
import           Test.Hspec

spec :: Spec
spec = do
    describe "p5" $ do
        it "p5" $
            p5 `shouldBe` 232792560

