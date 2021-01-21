{-# LANGUAGE ScopedTypeVariables #-}

module Main where

dupli :: [a] -> [a]
dupli = concatMap(replicate 2)

main = print(dupli [1, 2, 3])
