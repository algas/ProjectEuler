import Test.Hspec
import P9

main :: IO ()
main = hspec $ do
    describe "p9" $ do
        it "p9" $
            p9 `shouldBe` 31875000

