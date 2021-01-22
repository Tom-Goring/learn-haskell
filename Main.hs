{-# LANGUAGE ScopedTypeVariables #-}

module Main where

listBetween :: Int -> Int -> [Int]
listBetween x y = [x, x+1..y]

main = print(listBetween 4 9)
