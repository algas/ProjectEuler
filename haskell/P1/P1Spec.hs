import Test.Hspec
import P1

main :: IO ()
main = hspec $ do
    describe "p1" $ do
        it "p1" $
            p1 `shouldBe` 233168

