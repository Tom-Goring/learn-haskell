{-# LANGUAGE ScopedTypeVariables #-}

module Main where

dropEvery :: [a] -> Int -> [a]
dropEvery xs n = [x | (x, idx) <- zip xs [0, 1..], mod (idx+1) n /= 0 ]

main = print(dropEvery "abcdefghik" 3)
