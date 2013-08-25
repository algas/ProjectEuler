import Test.Hspec
import P10

main :: IO ()
main = hspec $ do
    describe "p10" $ do
        it "p10" $
            p10 `shouldBe` 142913828922

