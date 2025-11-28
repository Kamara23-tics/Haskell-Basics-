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
--Task 3 Sum of Elements Using foldr
sumAll :: [Int] -> Int
sumAll = foldr (+) 0

main :: IO ()
main = do
 print $ sumAll [10..20]
 --Output
 165
 --Task 4 Implement a function to compute the product of elements in a list using foldl.
productList :: [Int] -> Int
productList = foldl (*) 1

main :: IO ()
main = do
 print $ productList [1..5]
 --Output
 120

--Task 5:Reverse a List (Recursive)
revList :: [Int] -> [Int]
revList [] = []
revList (x:xs) = revList xs ++ [x]

main :: IO ()
main = do
 print $ revList [5..15]

--Output:
[15,14,13,12,11,10,9,8,7,6,5]
