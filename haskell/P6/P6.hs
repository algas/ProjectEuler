p6 :: Int -> Int
p6 m = (f * f) - (sum [x*x | x <- [1..m]])
    where f = sum [1..m]

main = print $ p6 100
