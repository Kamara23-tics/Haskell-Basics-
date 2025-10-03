--Task 1
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
 "positive"
 "negative"
 "neutral"

 --Task 2
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
