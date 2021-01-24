{-# LANGUAGE ScopedTypeVariables #-}

module Main where

import Data.List

combinations :: [a] -> Int -> [[a]]
combinations xs 0 = [[]]
combinations [] _ = []
combinations (x:xs) n = map (x:) (combinations xs (n-1)) ++ combinations xs n

main = print $ combinations "abc" 2

-- combinations "xxx" == "xxx"
-- create all of first character and all other characters (i.e. abcd -> ab, ac, ad)
-- create all of second character and all characters but first as we already did that (i.e. abcd -> bc, bd)
-- create all of third character and all characters but first and second as we already did that (i.e. abcd -> cd)
-- so for combinations "abcd" 3
-- we find all combs of bcd 2 -> bc, bd, cd; append a to the start:
-- abc, abd, acd
-- then add the tail of the origin list for the final combination:
-- abc, abd, acd, bcd
