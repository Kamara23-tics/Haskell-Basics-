--Task 1: Checking Types in GHCi

42 -> Int
3.14 -> Float
"Haskell" -> String 
'Z' -> Char
True && False -> Boolean 

--Task 2: Function Type Signatures
--A function add that takes two Int values and returns their sum
add :: Int -> Int -> Int
add a b  = a + b

main :: IO ()
main = do
 print $ add 4 5
 
 --Output 
 9


--A function isEven that takes an Int and returns a Bool indicating if it's even
isEven :: Int -> Bool
isEven y = y `mod` 2 == 0

main :: IO ()
main = do
 print $ isEven 11
 
 --Output
 False 

 
--A function concatStrings that takes two String values and returns their concatenation
concatStrings :: String -> String -> String
concatStrings x y =  x ++ " " ++ y

main :: IO ()
main = do
 print $ concatStrings "Merry" "Christmas"

-- Output
"Merry Christmas"

myAge :: Int -> Int
myAge a = 25

main :: IO ()
main = do
 print $ myAge 25
 
 
piValue :: Double -> Double 
piValue π = 3.142
 
main :: IO ()
main = do
 print $ piValue 3.142
 
 
greeting :: String -> String 
greeting a = "Hey!"

main :: IO ()
main = do
 print $ greeting "Hey!"
 
 
isHaskellFun :: Bool -> Bool
isHaskellFun b  = True

main :: IO ()
main = do
 print $ isHaskellFun True

 
