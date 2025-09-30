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
 
