module Fib_complex where

  fib = 1 : 1 : [a + b | (a, b) <- zip fib (tail fib)]
  fib_output n = fib !! n