import Test.Hspec
import P11

main :: IO ()
main = hspec $ do
    describe "p11" $ do
        it "p11" $
            p11 `shouldBe` 70600674

