-- http://learnyouahaskell.com/syntax-in-functions#pattern-matching
lucky :: (Integral a) => a -> String
lucky 7 = "Lucky number 7!"
-- lucky "" = "Lucky String?"
lucky x = "Sorry, you're out of luck, pal!"

sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5!"

factorial :: (Integral a) => a -> a
factorial n
  | n < 0 = (-1) -- deal with negative integer
  | n == 0 = 1
  | otherwise = n * factorial (n - 1)

head' :: [a] -> a
head' [] = error "This is an empty list"
head' (x:xs) = x

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs
