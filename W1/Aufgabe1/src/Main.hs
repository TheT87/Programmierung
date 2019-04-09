
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n*factorial (n-1)

sumFac :: Integer -> Integer -> Integer

sumFac n m
  | m >= n = factorial m + sumFac n (m-1)
  | otherwise = 0

