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
--Task 6:Implement a function that determines whether a given element exists in a list.
elemExists :: Eq a => a -> [a] -> Bool
elemExists _ [] = False       
elemExists x (y:ys)
  | x == y    = True                  
  | otherwise = elemExists x ys            
  
main :: IO ()
main = do
  print $ elemExists 4 [1, 2, 3, 4, 5]  
  print $ elemExists 'a' ['l', 'o', 'v', 'e']
  --Output 
True
False

--Task 7:Implement a function that takes a list and returns the length of the list.
listLength :: [a] -> Int
listLength [] = 0                       
listLength (_:xs) = 1 + listLength xs

main :: IO ()
main = do
  print $ listLength [1, 2, 3, 4, 5]           
  print $ listLength []                       
  print $ listLength ['a', 'b', 'c']
  --Output 
6
0
--Task 8:Implement a function that filters all even numbers from a list.
filterEvens :: [Int] -> [Int]
filterEvens [] = []                     
filterEvens (x:xs)
  | even x    = x : filterEvens xs  
  | otherwise = filterEvens xs             
  
main :: IO ()
main = do
  print $ filterEvens [1..20] 
  --Output:
[2,4,6,8,10,12,14,16,18,20]
--Task 9: Implement a function that applies a given function to each element of a list (map implementation)
myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []                     
myMap f (x:xs) = f x : myMap f xs

main :: IO ()
main = do
 print $ myMap (^2) [1..6]
 --Output
 Output:
[1,4,9,16,25,36]
