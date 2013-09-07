import Data.List (nub)

nn :: Integer -> Integer -> [Integer]
nn x y = nub [ a ^ b | a <- [2..x], b <- [2..y] ]

p29 :: Int
p29 = length $ nn 100 100

main :: IO ()
main = print p29
