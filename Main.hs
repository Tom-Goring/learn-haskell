{-# LANGUAGE ScopedTypeVariables #-}

module Main where

import Control.Monad.Random

randomElement :: [a] -> IO a
randomElement xs = do
    n <- randomRIO (0, 10) :: IO Int
    return (xs !! n)

randomElements :: [a] -> Int -> IO [a]
randomElements xs n = replicateM n $ randomElement xs

main :: IO ()
main = do
    xs <- randomElements "abcdefghijk" 3
    print xs
