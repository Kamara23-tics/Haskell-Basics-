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

--Task 3:Defining immutable variables in Haskell
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

 
--Task 4:Using prefix notation for the following infix expressions:

--5 + 3
add :: Int -> Int -> Int
add y z = (+) y z

main :: IO ()
main = do
 print $ add 5 3
 --Output 
 8

--10 * 4
multi :: Int -> Int -> Int
multi x z = (*) x z

main :: IO ()
main = do
 print $ multi 10 4
--Output
40

--True&&False
result :: Bool
result = (&&) True False

main :: IO ()
main = do
 print $ result
--Output 
False

add :: Int -> Int -> Int
add x y = x + y

main :: IO ()
main = do 
 print $ add 7 2
 --Output
 9
