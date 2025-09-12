--double: Multiplies a number by 2.
double :: Int -> Int 
double x  = x * 2

main :: IO ()
main = do
 print $ double 4

 -- answer = 8
