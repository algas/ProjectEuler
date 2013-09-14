import Data.Ratio

intToDigits :: Int -> [Int]
intToDigits n
    | n < 10    = [n]
    | otherwise = r : intToDigits q
    where
        (q, r) = divMod n 10

-- (dx !! 0 /= dx !! 1) && (dy !! 0 /= dy !! 1) && xx < 10 && yy < 10 && 
p33' :: Int -> Int -> Bool
p33' x y = notElem 0 dx && notElem 0 dy && elem xx dx && elem yy dy && nx == ny && length nx == 1 && length ny == 1
    where
        z  = x % y
        xx = numerator z
        yy = denominator z
        dx = intToDigits x
        dy = intToDigits y
        nx = filter (/=xx) dx
        ny = filter (/=yy) dy

p33 :: Int
p33 = denominator $ product [ p % q | (p,q) <- px ]
    where
        px = (49, 98) : [ (x,y) | x <- [10..99], y <- [(x+1)..99], p33' x y ]


main :: IO ()
main = print $ p33
