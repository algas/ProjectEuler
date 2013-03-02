factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

fn :: Integer -> [Integer]
fn n = [read [x] | x <- show (factorial n)]

p20 = sum $ fn 100

main = print p20
