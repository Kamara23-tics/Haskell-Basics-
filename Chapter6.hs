factorial :: Int -> Int
factorial 0 = 1 
factorial x = x * factorial (x-1)

main :: IO ()
main = do
 print $ (factorial 7)

--Output
5040
