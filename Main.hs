{-# LANGUAGE ScopedTypeVariables #-}

module Main where

split :: [a] -> Int -> ([a], [a])
split xs n = ([x | (x, i) <- zip xs [0, 1..], i < n], [x | (x, i) <- zip xs [0, 1..], i >= n])

main = print(split "abcdefghik" 3)
