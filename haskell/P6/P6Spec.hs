import Test.Hspec
import P6

main :: IO ()
main = hspec $ do
    describe "p6" $ do
        it "p6" $
            p6 `shouldBe` 25164150

