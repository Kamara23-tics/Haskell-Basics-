--Task 1
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
 
-- Task 2
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
