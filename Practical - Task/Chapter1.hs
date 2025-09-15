--double: Multiplies a number by 2.
double :: Int -> Int 
double x  = x * 2

main :: IO ()
main = do
 print $ double 4

 --Output:  
 8


--increment: Increases a number by 1.
increment :: Int -> Int
increment x = x + 1

main :: IO ()
main = do
 print $ increment 5

-- Output :
6


--doubleThenIncrement Uses function composition to apply double first and then increment
doubleThenincrement :: Int -> Int
doubleThenincrement x = x * 2 + 1

main :: IO ()
main = do
 print $ doubleThenincrement 5

 --Output : 
 11


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



--Write a function greaterThan18 that checks whether a given number is greater than 18.
greaterThan18 :: Int -> Bool
greaterThan18 x = x > 18

main :: IO ()
main = do
 print $ greaterThan18 5 

 --Output: 
 False


--extractPlayers: Takes a list of tuples ((name, score)) and extracts the player names
extractPlayers :: [(String,Int)] -> [String]
extractPlayers players = map fst players

main :: IO ()
main = do
 let players = [("Amara", 10), ("Ify", 15), ("Oge", 18), ("Efe", 20)]
 print $ extractPlayers players

--Output
["Amara","Ify","Oge","Efe"]
