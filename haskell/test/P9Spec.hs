module P9Spec where

import           P9
import           Test.Hspec

spec :: Spec
spec = do
    describe "p9" $ do
        it "p9" $
            p9 `shouldBe` 31875000
