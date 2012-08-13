import Data.Char
import Data.List

scoreChar :: Char -> Int
scoreChar c = ord c - ord 'A' + 1

scoreString :: (Int,String) -> Int
scoreString (n,xs) = n * sum (map scoreChar xs)

splitBy :: (a -> Bool) -> [a] -> [[a]]
splitBy p [] = []
splitBy p xs = y : (splitBy p $ dropWhile p $ z)
    where
        (y, z) = break p xs

p22 :: [String] -> Int
p22 names = sum [scoreString (n,xs) | (n,xs) <- zip [1..length names] names]

main = do
    names <- readFile "names.txt"
    putStrLn $ show $ p22 $ sort $ splitBy (==',') $ filter (/='"') names

