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
