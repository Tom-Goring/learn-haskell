{-# LANGUAGE ScopedTypeVariables #-}

module Main where

slice :: [a] -> Int -> Int -> [a]
slice [] _ _ = []
slice xs i j
  | i == j = []
  | i > j = error "Cannot produce slice of negative length"
  | otherwise = [x | (x, k) <- zip xs [0, 1..], k >= i && k <= j]

main = print(slice "abcdefghik" 2 4)
