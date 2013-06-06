module Main where

import Data.List (sort, nub, intercalate)

divisors :: Int -> [Int]
divisors n = 1 : (nub $ sort $ divide n [2..(n `div` 2)])

divide :: Int -> [Int] -> [Int]
divide _ [] = []
divide x (y:ys)
    | r == 0    = y : q : divide x ys
    | otherwise = divide x ys
    where
        (q, r) = divMod x y

isAbundant :: Int -> Bool
isAbundant n = n < (sum (divisors n))

abundants :: [Int]
abundants = filter isAbundant [12..28123]

writeAbundants :: String -> [Int] -> IO ()
writeAbundants path xs = do
    writeFile path $ intercalate "\n" $ map show $ xs

readAbundants :: String -> IO [Int]
readAbundants path = do
    lst <- fmap lines $ readFile path
    return $ map read lst

sumOfTwoAbundants :: [Int] -> [Int]
sumOfTwoAbundants ys = filter (<=28123) $ f ys
    where
        f [] = []
        f (x:xs) = [(x + y) | y <- (x:xs)] ++ sumOfTwoAbundants xs

writeSumOfTwoAbundants :: String -> [Int] -> IO ()
writeSumOfTwoAbundants path xs = do
    writeFile path $ intercalate "\n" $ map show $ xs

readSumOfTwoAbundants :: String -> IO [Int]
readSumOfTwoAbundants path = do
    lst <- fmap lines $ readFile path
    return $ map read lst

p23 :: IO Int
p23 = do
    let abundantsFile = "abundants.txt"
    let sumAbundantsFile = "sabundants.txt"
    --writeAbundants abundantsFile abundants
    --xs <- readAbundants abundantsFile
    --writeSumOfTwoAbundants sumAbundantsFile $ sumOfTwoAbundants xs
    lst <- readSumOfTwoAbundants sumAbundantsFile
    return $ sum [n | n <- [1..28123], notElem n $ nub $ sort lst]

main :: IO ()
main = do
    p <- p23
    print p

