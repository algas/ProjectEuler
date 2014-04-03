module Main where

import           Test.DocTest

-- testFiles = src/Pxx.hs
testFiles :: [FilePath]
testFiles = map (("src/P"++) . (++".hs") . show) [1..2]

main :: IO ()
main = doctest testFiles
