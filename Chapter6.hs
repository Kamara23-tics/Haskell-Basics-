--Task 1 Factorial (Recursive)
factorial :: Int -> Int
factorial 0 = 1 
factorial x = x * factorial (x-1)

main :: IO ()
main = do
 print $ (factorial 7)

--Output
5040

--Task 2 Fibonacci (Recursive)
nthFibonacci :: Int -> Int
nthFibonacci 0 = 0
nthFibonacci 1 = 1 
nthFibonacci n = nthFibonacci(n-1) + nthFibonacci(n-2)

main :: IO ()
main = do
 print $ nthFibonacci 8
 --Output 
 21
