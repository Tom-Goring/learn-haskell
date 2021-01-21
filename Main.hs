{-# LANGUAGE ScopedTypeVariables #-}

module Main where

rotate :: [a] -> Int -> [a]
rotate [] _ = []
rotate xs n 
  | n > 0 = [x | (x, idx) <- l, idx >= n'] ++ [x | (x, idx) <- l, idx < n']
  | n < 0 = [x | (x, idx) <- l,  idx >= len - n'] ++ [x | (x, idx) <- l, idx < len - n']
    where 
        l = zip xs [0, 1..]
        n' = abs n `mod` len
        len = length xs

main = print(rotate "abcdefgh" (-2))
