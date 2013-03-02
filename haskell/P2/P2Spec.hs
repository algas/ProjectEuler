import Test.Hspec
import P2

main :: IO ()
main = hspec $ do
    describe "fib" $ do
        it "take 10 fib" $
            take 10 fib `shouldBe` [1,2,3,5,8, 13,21,34,55,89]
    describe "p2" $ do
        it "p2" $
            p2 `shouldBe` 4613732

