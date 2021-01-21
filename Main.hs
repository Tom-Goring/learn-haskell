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

decode :: Eq a => [ListItem a] -> [a]
decode = concatMap decodeHelper
    where
        decodeHelper (Single x) = [x]
        decodeHelper (Multiple n x) = replicate n x

main = print(decode [Multiple 4 'a', Single 'b', Multiple 2 'c'])
