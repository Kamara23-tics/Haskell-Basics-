--Practical Tasks: Improving and Combining Functions
--Task 1 Using applyTwice
double :: Int -> Int
double y = y * 2 

applyThrice :: (Int -> Int) -> Int -> Int
applyThrice f y = (f (f (f y) ) )

main :: IO ()
main = do

 print $ applyThrice double 4
 --Output
 32

--Task 2 Filtering Odd Numbers
filterOddNumbers :: [Int] -> [Int]
filterOddNumbers a = filter odd a

main :: IO ()
main = do
 print $ filterOddNumbers  [1..30]
 --Output:
[1,3,5,7,9,11,13,15,17,19,21,23,25,27,29]

--Task 3: Checking for Uppercase Letters
import Data.Char (isUpper)
upperCaseLetter :: String -> Bool
upperCaseLetter = any isUpper

main :: IO ()
main = do
   print $ map upperCaseLetter ["Ape", "dog", "cat", "Rat", "Cow"]
 -- Output:
[True,False,False,True,True]

--Task 4: Using Lambda Functions
biggerThan10 :: Int -> Bool
biggerThan10 x = (\x -> x > 10) x

main :: IO ()
main = do
  print $ biggerThan10 15
  --Output:
  True
--Task 5: Partial Application
multiplyByFive :: Int -> Int
multiplyByFive x = (* 5) x

main :: IO ()
main = do
 print $ multiplyByFive 4
 --Output:
 20

--Task 6: Function Composition
squaresOfEvenNumbers ::[Int] -> [Int]
squaresOfEvenNumbers x = filter even . map (^ 2). take 20 $ x

main :: IO ()
main = do
  print $ squaresOfEvenNumbers [1..20]
 -- Output:
[4,16,36,64,100,144,196,256,324,400]

--Task 7:The $ Operator
result :: [Int] -> Int
result a = sum $ map (*2) $ filter (>3) $ a

main :: IO ()
main = do
 print $ result [1..10]
 --Output 
 98
--Task 8 Point-Free Style
addFive :: Int -> Int
addFive = (+5)

main :: IO ()
main = do
 print $ addFive 4
 --Output
 9
 
transformList :: (Int -> Int) -> [Int] -> [Int]
transformList f xs = map (applyTwice f) xs

applyTwice :: (a -> a) -> a -> a
applyTwice f xs = f (f xs)

main :: IO ()
main = do
 print $ transformList (*2) [1..5]
 Output:
[4,8,12,16,20]
