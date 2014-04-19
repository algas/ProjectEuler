module P12Spec where

import           P12
import           Test.Hspec

spec :: Spec
spec = do
    describe "p12" $ do
        it "p12" $
            p12 `shouldBe` 76576500
