double :: Int -> Int
double y = y * 2 

applyThrice :: (Int -> Int) -> Int -> Int
applyThrice f y = (f (f (f y) ) )

main :: IO ()
main = do

 print $ applyThrice double 4
 --Output
 32
