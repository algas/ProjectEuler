import Data.List (maximumBy)
import Data.Numbers.Primes


digitsToInt :: [Integer] -> Integer
digitsToInt [] = 0
digitsToInt ns = foldl1 (\x y -> 10 * x + y) ns

recurring :: Integer -> Integer
recurring z = recurring' z [9]
    where
        recurring' :: Integer -> [Integer] -> Integer
        recurring' x ys
            | x `mod` 2 == 0 || x `mod` 5 == 0 = 1
            | digitsToInt ys `mod` x == 0 = fromIntegral (length ys) :: Integer
            | otherwise = recurring' x (9 : ys)

p26 :: Integer
p26 = fst $ maximumBy (\x y -> compare (snd x) (snd y)) [(p, recurring p) | p <- takeWhile (<1000) primes]

main :: IO ()
main = print p26
