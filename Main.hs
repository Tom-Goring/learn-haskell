{-# LANGUAGE ScopedTypeVariables #-}

module Main where

data ListItem a = Single a | Multiple Int a
    deriving Show

encode :: Eq a => [a] -> [ListItem a]
encode [] = []
encode (x:xs) = g f : encode (dropWhile (==x) xs)
    where 
        f = (length (x : takeWhile (==x) xs), x)
        g (1, x) = Single x
        g (n, x) = Multiple n x

decode :: Eq a => [ListItem a] -> [a]
decode = concatMap decodeHelper
    where
        decodeHelper (Single x) = [x]
        decodeHelper (Multiple n x) = replicate n x

main = print(encode "aaaabbbccaadeeeee")
