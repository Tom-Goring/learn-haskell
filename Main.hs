{-# LANGUAGE ScopedTypeVariables #-}

module Main where

insert :: [a] -> a -> Int -> [a]
insert xs a n = ys ++ [a] ++ zs
    where (ys, zs) = splitAt n xs

main = print(insert "abcdefgh" 'a' 0)
