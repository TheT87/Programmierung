
factorial :: Integer -> Integer
factorial 0 = 1
factorial 1 = 1
factorial n = n*factorial (n-1)

fib = 1 : 1 : [a + b | (a, b) <- zip fib (tail fib)]
fib_output n = fib !! n

--------#

sumFac :: Integer -> Integer -> Integer

sumFac n m
  | m >= n = factorial m + sumFac n (m-1)
  | otherwise = 0

sumFacs:: Integer -> Integer -> Integer
sumFacs n m =
  if m>=n
  then factorial m + sumFacs n (m-1)
  else 0

--------#

rem1:: Int -> [Int] -> [Int]
rem1 _ []=[]
rem1 n (x:xs)
  | n /= x = x : rem1 n xs
  | otherwise = rem1 n xs

-------#

isOrd:: [Int] -> Bool
isOrd [] = True
isOrd [_] = True
isOrd (x:y:xs)
  |x > y = False
  |otherwise = isOrd (y:xs)

