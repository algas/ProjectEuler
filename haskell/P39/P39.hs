-- Problem 39
import Data.List (findIndex, findIndices)
import Data.Maybe (fromJust)

pSet :: [(Int,(Int,Int,Int))]
pSet = [(p, (a,b,c)) | a <- [1..500], b <- [a..500], let c2 = a * a + b * b, let c = fromJust (findIndex (==c2) squares), let p = a+b+c, elem c2 squares, p <= 1000]
    where
        squares = [n * n | n <- [0..1000]]

pLength :: [Int]
pLength = [length (findIndices (==n) (map fst pSet)) | n <- [0..1000]]

solution = findIndex (==(maximum pLength)) pLength

