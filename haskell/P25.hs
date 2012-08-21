memoized_fib :: Int -> Integer
memoized_fib = (map fib [0 ..] !!)
   where fib 0 = 0
         fib 1 = 1
         fib n = memoized_fib (n-2) + memoized_fib (n-1)

fibonacci :: [Integer]
fibonacci = map memoized_fib [0..]

p25 n = length $ takeWhile (<n) [length (show f) | f <- fibonacci]

main = print $ p25 1000
