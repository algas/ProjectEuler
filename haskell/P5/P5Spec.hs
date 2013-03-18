import Test.Hspec
import P5

main :: IO ()
main = hspec $ do
    describe "p5" $ do
        it "p5" $
            p5 `shouldBe` 232792560

