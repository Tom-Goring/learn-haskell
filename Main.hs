{-# LANGUAGE ScopedTypeVariables #-}

module Main where

data ListItem a = Single a | Multiple Int a
    deriving Show

pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = (x : takeWhile (==x) xs) : pack(dropWhile (==x) xs)

encode' :: Eq a => [a] -> [(Int, a)]
encode' [] = []
encode' xs = [(length x, head x) | x <- pack xs]

encode :: Eq a => [a] -> [ListItem a]
encode = map encodeHelper . encode'
    where
        encodeHelper (1, x) = Single x
        encodeHelper (n, x) = Multiple n x

main = print(encode "aaaabbbbcddddd")
