{-# LANGUAGE ScopedTypeVariables #-}

module Main where

import Control.Monad.Random

randomElement :: [Int] -> IO Int
randomElement xs = do
    n <- randomRIO (0, 10) :: IO Int
    return (xs !! n)

randomElements :: [Int] -> Int -> IO [Int]
randomElements xs n = replicateM n $ randomElement xs

main :: IO ()
main = do
    xs <- randomElements [1, 2..20] 3
    print xs
