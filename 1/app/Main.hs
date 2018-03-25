module Main where

import System.Environment
import Data.Bool
import Lib

main :: IO ()
main = do
    a <- getArgs
    content <- readFile (a !! 0)
    let inputLines = lines content
    let grid = createGrid 1200 1200
    -- putStrLn $ show inputLines

