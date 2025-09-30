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
