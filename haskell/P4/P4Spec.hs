import Test.Hspec
import P4

main :: IO ()
main = hspec $ do
    describe "isPalindromic" $ do
        it "isPalindromic 121" $
            isPalindromic 121 `shouldBe` True
        it "isPalindromic 1234" $
            isPalindromic 1234 `shouldBe` False
    describe "p4" $ do
        it "p4" $
            p4 `shouldBe` 906609

