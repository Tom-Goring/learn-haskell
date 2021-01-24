{-# LANGUAGE ScopedTypeVariables #-}

module Main where

import Control.Monad.Random

randomElement :: [a] -> IO a
randomElement xs = do
    n <- randomRIO (0, length xs) :: IO Int
    return (xs !! n)

randomElements :: [a] -> Int -> IO [a]
randomElements xs n = replicateM n $ randomElement xs

randomPermutation :: [a] -> IO [a]
randomPermutation xs = replicateM (length xs) $ randomElement xs

main :: IO ()
main = do
    xs <- randomPermutation "abcdef"
    print xs
