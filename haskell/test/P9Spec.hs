module P9Spec where

import Test.Hspec
import P9

spec :: Spec
spec = do
    describe "p9" $ do
        it "p9" $
            p9 `shouldBe` 31875000
