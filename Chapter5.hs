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
