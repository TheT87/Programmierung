
factorial :: Integer -> Integer
factorial 0 = 1
factorial 1 = 1
factorial n = n*factorial (n-1)

sumFac :: Integer -> Integer -> Integer

sumFac n m
  | m >= n = factorial m + sumFac n (m-1)
  | otherwise = 0

module Fib_complex where
  fib = 1 : 1 : [a + b | (a, b) <- zip fib (tail fib)]
  fib_output n = fib !! n

