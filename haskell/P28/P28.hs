diag :: Int -> Int
diag 1 = 1
diag n = sum [ (n - 2) ^ 2 + m * (n - 1) | m <- [1..4] ] + diag (n - 2)

p28 :: Int
p28 = diag 1001

main :: IO ()
main = print $ p28
