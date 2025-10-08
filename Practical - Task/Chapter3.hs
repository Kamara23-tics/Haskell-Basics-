--Task 1
--Check if a number is positive, negative, or zero
checkNumber :: Int -> String 
checkNumber y =
  if y > 0
    then "positive"
     else if y < 0
      then "negative"
       else "neutral"
        
main :: IO ()
main = do
 putStrLn $ checkNumber 5
 putStrLn $ checkNumber (-3)
 putStrLn $ checkNumber 0

 --Output
 positive
 negative
 neutral

 --Task 2
 --Determine the grade based on a score using guards
grade :: Int -> String
grade score
  | score >= 90 = "A"
  | score >= 80 = "B"
  | score >= 70 = "C"
  | score >= 60 = "D"
  | otherwise = "F"

main :: IO ()
main = do
  putStrLn $ grade 95
  putStrLn $ grade 72
  putStrLn $ grade 50
   --output
   A
   C
   F
--Task 3
--Convert an RGB color to a hex string using let bindings

import Text.Printf 

rgbToHex :: (Int,Int,Int) -> String 
rgbToHex (r, g, b) =
 let rHex = printf "%02X" r
     gHex = printf "%02X" g
     bHex = printf "%02X" b
  in "#"  ++ rHex ++ gHex ++ bHex 

main :: IO ()
main = do
 putStrLn $ rgbToHex (255,0,127)
 putStrLn $ rgbToHex (0,255,64)

--Output
#FF007F
#00FF40

--Task 4
--Calculate the area of a triangle using Heron's formula

triangleArea :: Float -> Float -> Float -> Float 
triangleArea a b c =
 let s  = a + b + c / 2
 in sqrt(s * (s - a) * (s - b) * (s - c))

main :: IO ()
main = do
 print $ triangleArea 3 4 5 
 print $ triangleArea 7 8 9
 --Output
39.09364
171.55994

--Task 5
--Determine the type of a triangle using guards
triangleType :: Float -> Float -> Float -> String 
triangleType a b c 
 | a == b && b == c || c == a = "Equilateral"
 | a == b || b == c || c == a = "Isosceles"
 | otherwise = "Scalene"
 
main :: IO ()
main = do
 putStrLn $ triangleType 3 3 3
 putStrLn $ triangleType 5 5 8
 putStrLn $ triangleType 6 7 8
 --Output
 Equilateral 
 Isosceles
 Scalene
 --Task 6
 --Check leap year using if-then-else
isLeapYear :: Int -> Bool
isLeapYear x =
 if x `mod` 400 == 0
   then True
     else if x `mod` 100 == 0 || x `mod` 400 == 0
       then  False
         else if x `mod` 4 == 0 
           then True
             else False

main :: IO ()
main = do
 print $ isLeapYear 2000
 print $ isLeapYear 1900
 print $ isLeapYear 2024
 --Output
 True
 False
 True

 --Task 7 
 --Determine the season based on the month using guards
season :: Int -> String 
season x 
  | x == 12 || x == 1|| x == 2 = "Winter"
  | x >= 3 && x <= 5 = "Spring"
  | x >= 6 && x <= 8 = "Summer"
  | x >= 9 && x <= 11 = "Autumn"
  
main :: IO ()
main = do
 putStrLn $ season 3
 putStrLn $ season 7
 putStrLn $ season 11
 --Output
Spring
Summer
Autumn
--Task 8 Calculate BMI and return category using where
bmiCategory :: Float -> Float -> String
bmiCategory weight height 
  | bmi < 18.5  = "Underweight"
  | bmi >= 18.5 && bmi <= 24.9 = "Normal"
  | bmi == 25 && bmi <= 29.9 = "Overweight"
  |otherwise = "Obese"
 
  where bmi = weight / height ^ 2
 
main :: IO ()
main = do
  putStrLn $ bmiCategory 70.0 1.75
  putStrLn $ bmiCategory 90.0 1.8
  --Output
  Normal 
  Obese

--Task 9
--Find the maximum of three numbers using letmaxOfThree :: Int -> Int -> Int -> Int
maxOfThree x y z =
 let maxXY = max x y
     maxAll = max maxXY z
  in maxAll
main :: IO ()
main = do
 print $ maxOfThree 10 20 15
 print $ maxOfThree 5 25 10
 --Output
 20
 25
--Task 10 Check if a string is a palindrome using recursion and gua
  
