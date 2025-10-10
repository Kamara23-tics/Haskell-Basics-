--Task 1 Define a weatherReport Function
weatherReport :: String -> String
weatherReport "sunny" = "It's a bright and beautiful day"
weatherReport "rainy" = "Don't forget your umbrella!"
weatherReport "cloudy" = "A bit gloomy, but no rain yet!"
weatherReport _ = "Weather unknown"

main :: IO ()
main = do
 putStrLn $ weatherReport "hot"
 --Output
 "Weather unknown"
 
-- Task 2 Define a dayType Function
dayType :: String -> String 
dayType "Saturday" =  "It's a weekend!"
dayType "Sunday" =  "It's a weekend!"
dayType "Monday" = "It's a weekday"
dayType "Tuesday" = "It's a weekday"
dayType "Wednesday" = "It's a weekday"
dayType "Thursday" = "It's a weekday" 
dayType "Friday" = "It's a weekday"
dayType _ = "Invalid day"

main :: IO ()
main = do
 putStrLn $ dayType "August"
--Output 
"Invalid day"
--Task 3 Define a gradeComment Function
gradeComment :: Int -> String 
gradeComment x 
  | x >= 90 = "Excellent"
  | x >= 70 = "Good job"
  | x >= 50 = "You passed"
  | x >= 0 = "Better luck next time"
  | otherwise  = "Invalid grade"

main :: IO ()
main = do
 putStrLn $ gradeComment 90
 putStrLn $ gradeComment 65
 putStrLn $ gradeComment 30
 putStrLn $ gradeComment (-5)
 --Output 
"Excellent"
"You passed"
"Better luck next time"
"Invalid grade"
