module Main where

import           Test.DocTest
import System.FilePath.Glob

-- testFiles = src/Pxx.hs
testFiles :: IO [FilePath]
testFiles = glob "src/P*.hs"

main :: IO ()
main = testFiles >>= doctest
