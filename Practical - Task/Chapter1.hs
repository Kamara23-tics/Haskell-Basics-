--double: Multiplies a number by 2.
double :: Int -> Int 
double x  = x * 2

main :: IO ()
main = do
 print $ double 4

 -- answer = 8


--increment: Increases a number by 1.
increment :: Int -> Int
increment x = x + 1

main :: IO ()
main = do
 print $ increment 5

-- answer = 6


--doubleThenIncrement Uses function composition to apply double first and then increment
doubleThenincrement :: Int -> Int
doubleThenincrement x = x * 2 + 1

main :: IO ()
main = do
 print $ doubleThenincrement 5

 --answer = 11
