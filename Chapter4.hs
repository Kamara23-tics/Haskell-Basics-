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
 "weather unknown"
