--Task 1: Checking Types in GHCi

42 -> Int
3.14 -> Float
"Haskell" -> String 
'Z' -> Char
True && False -> Boolean 

--Task 2: Function Type Signatures
--A function add that takes two Int values and returns their sum
add :: Int -> Int -> Int
add a b  = a + b

main :: IO ()
main = do
 print $ add 4 5
 
 --Output 
 9


--A function isEven that takes an Int and returns a Bool indicating if it's even
isEven :: Int -> Bool
isEven y = y `mod` 2 == 0

main :: IO ()
main = do
 print $ isEven 11
 
 --Output
 False 

 
--A function concatStrings that takes two String values and returns their concatenation
concatStrings :: String -> String -> String
concatStrings x y =  x ++ " " ++ y

main :: IO ()
main = do
 print $ concatStrings "Merry" "Christmas"

-- Output
"Merry Christmas"

--Task 3:Defining immutable variables in Haskell
myAge :: Int -> Int
myAge a = 25

main :: IO ()
main = do
 print $ myAge 25
 
 
piValue :: Double -> Double 
piValue π = 3.142
 
main :: IO ()
main = do
 print $ piValue 3.142
 
 
greeting :: String -> String 
greeting a = "Hey!"

main :: IO ()
main = do
 print $ greeting "Hey!"
 
 
isHaskellFun :: Bool -> Bool
isHaskellFun b  = True

main :: IO ()
main = do
 print $ isHaskellFun True

 
--Task 4:Using prefix notation for the following infix expressions:

--5 + 3
add :: Int -> Int -> Int
add y z = (+) y z

main :: IO ()
main = do
 print $ add 5 3
 --Output 
 8

--10 * 4
multi :: Int -> Int -> Int
multi x z = (*) x z

main :: IO ()
main = do
 print $ multi 10 4
--Output
40

--True&&False
result :: Bool
result = (&&) True False

main :: IO ()
main = do
 print $ result
--Output 
False

--Using infix notation for the following prefix functions
--(+) 7 2
add :: Int -> Int -> Int
add x y = x + y

main :: IO ()
main = do 
 print $ add 7 2
 --Output
 9

--(*) 6 5
multi :: Int -> Int -> Int
multi x y = x * y

main :: IO ()
main = do 
 print $ multi 6 5

 --Output 
 30

--(&&) True False
result :: Bool
result = True && False

main :: IO ()
main = do
 print $ result

 --Output
 False

--Task 5
--a function circleArea that takes a Float radius and returns the area of the circle
circleArea :: Float -> Float 
circleArea r = pi * r * r

main :: IO ()
main = do
  let r = 3.5
  let area = circleArea r
  putStrLn $ "circleArea with radius " ++ show r ++ " is " ++ show area
  
  --Output
  circleArea with radius 3.5 is 38.484512

--a function maxOfThree that takes three Int values and returns the maximum.
maxOfThree :: Int -> Int-> Int -> Int
maxOfThree x y z = x `max` y `max` z

main :: IO ()
main = do
 print $ maxOfThree 7 (-10) 3
--Output
7

--Task 6
--Define an Int variable smallNumber with the value 2^62
smallNumber :: Int -> Int
smallNumber x =  x ^ 62

main :: IO ()
main = do
 print $ smallNumber 2
 --Output
 4611686018427387904
 
-- Define an Integer variable bigNumber with the value 2^127
bigNumber :: Integer -> Integer
bigNumber x =  x ^ 127

main :: IO ()
main = do
 print $ bigNumber 2
 --Output
 170141183460469231731687303715884105728

--evaluating 2 ^ 64 to check the possible result 
evaluate :: Int -> Int
evaluate x =  x ^ 64

main :: IO ()
main = do
 print $ evaluate 2
 --Output
 0

 --Task 7 Boolean Expressions 
rosesAreRed :: Bool -> Bool
rosesAreRed x = True && True

main :: IO ()
main = do
  let blue = False
  print $ rosesAreRed blue
  --Output
  True

rosesAreRed :: Bool -> Bool
rosesAreRed x = False || False

main :: IO ()
main = do
  let blue = True
  print $ rosesAreRed blue
  -- Output 
  False

snowIsWhite :: Bool 
snowIsWhite = not False

main :: IO ()
main = do
  print $ snowIsWhite
  -- Output 
  True
  
  
