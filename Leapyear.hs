module Leapyear ( main ) where

import Prelude hiding ( id )
-- This is a comment


-- This is the identity function:
id :: a -> a
id a = a
-- id = \ a -> a

-- ℕ = Int
add :: Int -> Int -> Int
-- add :: Int -> (Int -> Int)
add a b = a + b
-- add a = \ b -> a + b

type Year = Int

eq = (==)

-- `divBy n m` checks if `n` is divisible by `m`.
isDivBy :: Int -> Int -> Bool
-- n `divBy` m = n `mod` m == 0
n `isDivBy` m = eq x 0
  where
    x = mod n m

-- `divBy n` checks if `n` is divisible by `4`.
isDivBy4 :: Year -> Bool
isDivBy4 n = isDivBy n 4
-- divBy4 n = n `mod` 4 == 0

-- `isLeapYear 3`
isLeapYear :: Year -> Bool
isLeapYear yr
  | isDivBy yr 400 = True
  | isDivBy yr 100 = False
  | isDivBy yr 4    = True
  | otherwise = False


-- Reads a year from user, checks if that is a leap-year.
main :: IO ()
main = do
  n <- read <$> getLine
  print $ isLeapYear n
