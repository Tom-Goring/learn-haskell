{-# LANGUAGE ScopedTypeVariables #-}

module Main where

removeAt :: [a] -> Int -> [a]
removeAt xs n = [x | (x, i) <- l, i /= n] 
    where l = zip xs [0, 1..]

main = print(removeAt "abcdefgh" 1)
