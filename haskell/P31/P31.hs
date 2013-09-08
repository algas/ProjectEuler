import Data.Function.Memoize

changeCoinMemo :: Int -> [Int] -> Int
changeCoinMemo = memoize changeCoin

changeCoin :: Int -> [Int] -> Int
changeCoin 0 _  = 1
changeCoin _ [] = 0
changeCoin n (c:cs)
    | n < 0     = 0
    | otherwise = changeCoin n cs + changeCoin (n - c) (c:cs)

p31 :: Int
p31 = changeCoinMemo 200 [1,2,5,10,20,50,100,200]

main :: IO ()
main = print p31
