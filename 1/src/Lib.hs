module Lib where

import Data.Bool
import Data.List

-- Light type stuff

type Light = (Int, Int, Bool)

getX :: Light -> Int
getX (x, _, _) = x

getY :: Light -> Int
getY (_, y, _) = y

getB :: Light -> Bool
getB (_, _, b) = b

turnon :: Light -> Light
turnon (x, y, b) = (x, y, True)

turnoff :: Light -> Light
turnoff (x, y, b) = (x, y, False)

toggle :: Light -> Light
toggle l = if getB(l) == True then turnoff l else turnon l


-- Other stuff
createGrid :: Int -> Int -> [Light]
createGrid w h = [(x,y,b) | x <-[0,1..w-1], y <- [0,1..h-1], b <- [False]]

ffunc :: String -> (Light -> Light)
ffunc s
    | isInfixOf "toggle" s = toggle
    | isInfixOf "turn on" s = turnon
    | otherwise = turnoff
