-- Definition: Sunday is 0, Saturday is 6
type Year = Int

isLeapYear :: Year -> Bool
isLeapYear y
    | y `mod` 400 == 0 = True
    | y `mod` 100 == 0 = False
    | y `mod` 4 == 0 = True
    | otherwise = False

normalDays :: [Int]
normalDays = [31,28,31,30,31,30, 31,31,30,31,30,31]

leap :: Int -> Int
leap n
    | n == 28 = 29
    | otherwise = n

days :: Year -> [Int]
days y
    | isLeapYear y = map leap normalDays
    | otherwise = normalDays

firstDays :: Int -> [Int] -> [Int]
firstDays _ [] = []
firstDays d (y:ys) = d `mod` 7 : firstDays (d + y) ys 

flatten :: [[a]] -> [a]
flatten = foldl (++) []

c20Days :: [Int]
c20Days = flatten [days y | y <- [1901..2000]]

p19 = sum $ init [1 | y <- firstDays 1 c20Days, y == 0]

main = print p19
