--Task 1
--double: Multiplies a number by 2.
double :: Int -> Int 
double x  = x * 2

main :: IO ()
main = do
 print $ double 4

 --Output  
 8


--increment: Increases a number by 1.
increment :: Int -> Int
increment x = x + 1

main :: IO ()
main = do
 print $ increment 5

-- Output :
6


--doubleThenIncrement: Uses function composition to apply double first and then increment
double :: Num a => a -> a
double x = x * 2

increment :: Num a => a -> a
increment x = x + 1 

doubleThenIncrement :: Num a => a -> a
doubleThenIncrement = increment . double 

main :: IO ()
main = do
 print $ doubleThenIncrement 6
 -- Output 
 13


--Task2
-- Define a function to calculate the area of a circle
circleArea :: Float -> Float
circleArea radius = pi * radius ^ 2

main :: IO ()
main = do
  let radius = 6.5
  let area = circleArea radius
  print $ "The area of the circle with radius " ++ show radius ++ " is " ++ show area
  
   --Output :
   "The area of the circle with radius 6.5 is 132.7323"



--Task 3
--Write a function greaterThan18 that checks whether a given number is greater than 18.
greaterThan18 :: Int -> Bool
greaterThan18 x = x > 18

main :: IO ()
main = do
 print $ greaterThan18 5 

 --Output: 
 False


--Task 4
--extractPlayers: Takes a list of tuples ((name, score)) and extracts the player names
import Data.List
getTopThreePlayers :: [(String, Int)] -> [String]
getTopThreePlayers = map fst . take 3 . sortBy (\(_,s1) (_,s2) -> compare s2 s1)

main :: IO ()
main = do
 print $ (getTopThreePlayers [("Oge", 2), ("Ife", 4), ("Bebe", 5), ("Ogo", 8)])
 --Output:
["Ogo","Bebe","Ife"]
 


--Task 5
--Create a function infiniteNumbers that generates an infinite list of numbers. Extract only the first n elements

infiniteNumbers :: [Int]
infiniteNumbers = [1..]

takeN :: Int -> [Int]
takeN n = take n infiniteNumbers

main :: IO ()
main = do
  print $ takeN 5 

  --Output
  [1,2,3,4,5]


--Task 6
--Define a function addNumbers that takes two integers and returns their sum

addNumbers :: Int -> Int -> Int
addNumbers a b = a + b

main :: IO ()
main = do
 print $ addNumbers 13 17

 --Output
 30

--Task 7
--Write a function fToC that converts Fahrenheit to Celsius
fToC :: Float -> Float 
fToC x = (x - 32) * 5/9

main :: IO ()
main = do
 print $ fToC 50

 --Output 
 10.0

--Task 8
--Create a function applyTwice that applies a function twice to an input value

applyTwice :: (y -> y) -> y -> y
applyTwice f  = f (f x)

double :: Int -> Int
double x = x `div` 2

main :: IO ()
main = do
  print $ applyTwice double 24 

 --Output
 6
  
  
  
  
  
