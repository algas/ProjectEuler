import Test.Hspec
import P7

main :: IO ()
main = hspec $ do
    describe "p7" $ do
        it "p7" $
            p7 `shouldBe` 104743

