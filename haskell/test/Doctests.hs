module Main where

import           Test.DocTest

main :: IO ()
main = doctest ["src/P1.hs"]
