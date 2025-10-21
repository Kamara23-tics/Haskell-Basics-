double :: Int -> Int
double y = y * 2 

applyThrice :: (Int -> Int) -> Int -> Int
applyThrice f y = (f (f (f y) ) )

main :: IO ()
main = do

 print $ applyThrice double 4
 --Output
 32
filterOddNumbers :: [Int] -> [Int]
filterOddNumbers a = filter odd a

main :: IO ()
main = do
 print $ filterOddNumbers  [1..30]
 --Output:
[1,3,5,7,9,11,13,15,17,19,21,23,25,27,29]
