{-# LANGUAGE ScopedTypeVariables #-}

module Main where

dupli :: [a] -> Int -> [a]
dupli xs n = concatMap(replicate n) xs

main = print(dupli "abc" 3)
