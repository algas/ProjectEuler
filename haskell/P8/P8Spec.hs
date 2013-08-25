import Test.Hspec
import P8

main :: IO ()
main = hspec $ do
    describe "p8" $ do
        it "p8" $
            p8 `shouldBe` 40824

