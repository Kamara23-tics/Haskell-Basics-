--Task 1: Implement an Eq Instance for a Custom Data Type
Define a data type Color representing Red, Green, and Blue.
data Color = Red | Green | Blue

instance Eq Color where
  Red   == Red   = True
  Green == Green = True
  Blue  == Blue  = True
  _     == _     = False

main :: IO ()
main = do
  putStrLn "Testing Eq instance for Color:"
  print $ Red == Red
  print $ Red == Green
  print $ Blue == Blue
  --Output:
Testing Eq instance for Color:
True
False
True
--Task 2:Using the Color type from HC7T1, implement the Ord type class so that Red < Green < Blue.
data Color = Red | Green | Blue

instance Eq Color where
  Red   == Red   = True
  Green == Green = True
  Blue  == Blue  = True
  _     == _     = False
  
instance Ord Color where
  compare Red Red     = EQ
  compare Green Green = EQ
  compare Blue Blue   = EQ
  compare Red _       = LT      
  compare _ Red       = GT  
  compare Green Blue  = LT      
  compare Blue Green  = GT      
  
main :: IO ()
main = do
  putStrLn "Testing Eq instance for Color:"
  print $ Red == Red
  print $ Red == Green
  --Output:
Testing Eq instance for Color:
True
False
--Task 3: Write a function compareValues that takes two arguments of type a and returns the larger one.
--Ensure that a is both an instance of Eq and Ord.
compareValues :: (Eq a, Ord a) => a -> a -> a
compareValues x y = 
  if x > y 
   then x 
     else y

main :: IO ()
main = do
 print $ compareValues 5 3        
 putStrLn $ compareValues "apple" "banana"  
 print $ compareValues 3.14 2.71  
 --Output:
5
banana
3.14
--Task 4:Define a data type Shape with constructors Circle Double and Rectangle Double Double.
--Implement Show and Read instances for it.
data Shape = Circle Double 
           | Rectangle Double Double
           deriving (Eq)

-- Show instance for Shape
instance Show Shape where
    show (Circle r) = "Circle " ++ show r
    show (Rectangle w h) = "Rectangle " ++ show w ++ " " ++ show h

-- Read instance for Shape
instance Read Shape where
    readsPrec _ input = 
        tryCircle input ++ tryRectangle input
      where
        tryCircle s = 
            [(Circle r, rest) | ("Circle", s1) <- lex s,
                                (r, rest) <- reads s1]
        
        tryRectangle s = 
            [(Rectangle w h, rest) | ("Rectangle", s1) <- lex s,
                                     (w, s2) <- reads s1,
                                     (h, rest) <- reads s2]


main :: IO ()
main = do
    let c = Circle 5.0
    putStrLn $ "Circle: " ++ show c
    
    let r = Rectangle 3.0 4.0
    putStrLn $ "Rectangle: " ++ show r
    
    let c2 = read "Circle 7.5" :: Shape
    putStrLn $ "Read circle: " ++ show c2
    
    let r2 = read "Rectangle 10.0 20.0" :: Shape
    putStrLn $ "Read rectangle: " ++ show r2
    --Output:
Circle: Circle 5.0
Rectangle: Rectangle 3.0 4.0
Read circle: Circle 7.5
Read rectangle: Rectangle 10.0 20.0
--Task 5:Write a function squareArea that calculates the area of a square given its side length.
--Ensure that the function works with any numeric type
squareArea :: Num a => a -> a
squareArea side = side * side

main :: IO ()
main = do
    putStrLn $ "Square area (Int): " ++ show (squareArea (5 :: Int))
    putStrLn $ "Square area (Double): " ++ show (squareArea (5.5 :: Double))
    putStrLn $ "Square area (Float): " ++ show (squareArea (3.2 :: Float))
    putStrLn $ "Square area (Integer): " ++ show (squareArea (10 :: Integer))
    --Output:
Square area (Int): 25
Square area (Double): 30.25
Square area (Float): 10.240001
Square area (Integer): 100

--Task 6: Define a function circleCircumference that takes a radius and returns the circumference.
--Ensure it works with both Integral and Floating numbers.
circleCircumference :: (Floating a) => a -> a
circleCircumference radius = 2 * pi * radius

-- Helper function to convert Integral to Floating for calculation
circleCircumferenceInt :: (Integral a, Floating b) => a -> b
circleCircumferenceInt radius = 2 * pi * fromIntegral radius

main :: IO ()
main = do
    putStrLn "Using Floating types directly:"
    putStrLn $ "Circumference (Double, r=5.0): " ++ show (circleCircumference (5.0 :: Double))
    putStrLn $ "Circumference (Float, r=3.5): " ++ show (circleCircumference (3.5 :: Float))
    
    putStrLn "\nUsing Integral types (converted to Floating):"
    putStrLn $ "Circumference (Int, r=5): " ++ show (circleCircumferenceInt (5 :: Int) :: Double)
    putStrLn $ "Circumference (Integer, r=10): " ++ show (circleCircumferenceInt (10 :: Integer) :: Double)
    --Output:
Using Floating types directly:
Circumference (Double, r=5.0): 31.41592653589793
Circumference (Float, r=3.5): 21.99115

Using Integral types (converted to Floating):
Circumference (Int, r=5): 31.41592653589793
Circumference (Integer, r=10): 62.83185307179586
--Task 7: Create a function nextColor that takes a Color and returns the next color in sequence. If it reaches the last color, it should wrap around.
data Color = Red | Orange | Yellow | Green | Blue | Indigo | Violet
    deriving (Show, Eq, Enum, Bounded)

-- Function that returns the next color, wrapping around
nextColor :: Color -> Color
nextColor c
    | c == maxBound = minBound
    | otherwise = succ c

main :: IO ()
main = do
    putStrLn "Demonstrating nextColor with wrapping:"
    putStrLn $ "Next after Red: " ++ show (nextColor Red)
    putStrLn $ "Next after Orange: " ++ show (nextColor Orange)
    putStrLn $ "Next after Yellow: " ++ show (nextColor Yellow)
    putStrLn $ "Next after Green: " ++ show (nextColor Green)
    putStrLn $ "Next after Blue: " ++ show (nextColor Blue)
    putStrLn $ "Next after Indigo: " ++ show (nextColor Indigo)
    putStrLn $ "Next after Violet (wraps): " ++ show (nextColor Violet)
    
    putStrLn "\nAll colors in sequence:"
    let colors = [Red, Orange, Yellow, Green, Blue, Indigo, Violet]
    mapM_ (\c -> putStrLn $ show c ++ " -> " ++ show (nextColor c)) colors
    --Output:
Demonstrating nextColor with wrapping:
Next after Red: Orange
Next after Orange: Yellow
Next after Yellow: Green
Next after Green: Blue
Next after Blue: Indigo
Next after Indigo: Violet
Next after Violet (wraps): Red

All colors in sequence:
Red -> Orange
Orange -> Yellow
Yellow -> Green
Green -> Blue
Blue -> Indigo
Indigo -> Violet
Violet -> Red

--Task 8: Parse a Value from a String Using Read
--Write a function parseShape that takes a String and returns a Shape
data Shape = Circle Double
           | Rectangle Double Double
           | Triangle Double Double Double
           deriving (Show, Read, Eq)

parseShape :: String -> Maybe Shape
parseShape str = case reads str of
    [(shape, "")] -> Just shape
    _             -> Nothing

main :: IO ()
main = do
    -- Valid inputs
    print $ parseShape "Circle 5.0"                    -- Just (Circle 5.0)
    print $ parseShape "Rectangle 3.0 4.0"             -- Just (Rectangle 3.0 4.0)
    print $ parseShape "Triangle 3.0 4.0 5.0"          -- Just (Triangle 3.0 4.0 5.0)
    
    -- Invalid inputs
    print $ parseShape "Square 2.0"                    -- Nothing
    print $ parseShape "Circle"                        -- Nothing
    print $ parseShape "invalid input"                 -- Nothing
    print $ parseShape "Circle 5.0 extra"              -- Nothing
--Output:
Just (Circle 5.0)
Just (Rectangle 3.0 4.0)
Just (Triangle 3.0 4.0 5.0)
Nothing
Nothing
Nothing
Nothing
--Task 9: Create a type class Describable with a method describe.
--Implement it for Bool and Shape
data Shape = Circle Double
           | Rectangle Double Double
           | Triangle Double Double Double
           deriving (Show, Read, Eq)

parseShape :: String -> Maybe Shape
parseShape str = case reads str of
    [(shape, "")] -> Just shape
    _             -> Nothing

class Describable a where
    describe :: a -> String

instance Describable Bool where
    describe True  = "This is a boolean value representing truth"
    describe False = "This is a boolean value representing falsehood"


instance Describable Shape where
    describe (Circle r) = 
        "A circle with radius " ++ show r ++ " units"
    describe (Rectangle w h) = 
        "A rectangle with width " ++ show w ++ " and height " ++ show h ++ " units"
    describe (Triangle a b c) = 
        "A triangle with sides " ++ show a ++ ", " ++ show b ++ ", and " ++ show c ++ " units"

main :: IO ()
main = do
    putStrLn "=== Describing Bools ==="
    putStrLn $ describe True
    putStrLn $ describe False
    
    putStrLn "\n=== Describing Shapes ==="
    putStrLn $ describe (Circle 5.0)
    putStrLn $ describe (Rectangle 3.0 4.0)
    putStrLn $ describe (Triangle 3.0 4.0 5.0)
    
    putStrLn "\n=== Parsing and Describing ==="
    case parseShape "Circle 7.5" of
        Just shape -> putStrLn $ "Parsed: " ++ describe shape
        Nothing    -> putStrLn "Failed to parse"
--Output:
=== Describing Bools ===
This is a boolean value representing truth
This is a boolean value representing falsehood

=== Describing Shapes ===
A circle with radius 5.0 units
A rectangle with width 3.0 and height 4.0 units
A triangle with sides 3.0, 4.0, and 5.0 units

=== Parsing and Describing ===
Parsed: A circle with radius 7.5 units

--Task 10: Write a function describeAndCompare that takes two Describable values and returns the description of the larger one.
data Shape = Circle Double
           | Rectangle Double Double
           | Triangle Double Double Double
           deriving (Show, Read, Eq)

parseShape :: String -> Maybe Shape
parseShape str = case reads str of
    [(shape, "")] -> Just shape
    _             -> Nothing

class Describable a where
    describe :: a -> String

instance Describable Bool where
    describe True  = "This is a boolean value representing truth"
    describe False = "This is a boolean value representing falsehood"

instance Describable Shape where
    describe (Circle r) = 
        "A circle with radius " ++ show r ++ " units"
    describe (Rectangle w h) = 
        "A rectangle with width " ++ show w ++ " and height " ++ show h ++ " units"
    describe (Triangle a b c) = 
        "A triangle with sides " ++ show a ++ ", " ++ show b ++ ", and " ++ show c ++ " units"

describeAndCompare :: (Describable a, Ord a) => a -> a -> String
describeAndCompare x y = describe (max x y)

main :: IO ()
main = do
    putStrLn "=== Describing Bools ==="
    putStrLn $ describe True
    putStrLn $ describe False
    
    putStrLn "\n=== Describing Shapes ==="
    putStrLn $ describe (Circle 5.0)
    putStrLn $ describe (Rectangle 3.0 4.0)
    putStrLn $ describe (Triangle 3.0 4.0 5.0)
    
    putStrLn "\n=== Parsing and Describing ==="
    case parseShape "Circle 7.5" of
        Just shape -> putStrLn $ "Parsed: " ++ describe shape
        Nothing    -> putStrLn "Failed to parse"
    
    putStrLn "\n=== describeAndCompare Examples ==="
    putStrLn $ "Comparing True and False: " ++ describeAndCompare True False
    putStrLn $ "Comparing False and True: " ++ describeAndCompare False True
    putStrLn "=== Describing Bools ==="

--Output:
=== Describing Bools ===
This is a boolean value representing truth
This is a boolean value representing falsehood

=== Describing Shapes ===
A circle with radius 5.0 units
A rectangle with width 3.0 and height 4.0 units
A triangle with sides 3.0, 4.0, and 5.0 units

=== Parsing and Describing ===
Parsed: A circle with radius 7.5 units

=== describeAndCompare Examples ===
Comparing True and False: This is a boolean value representing truth
Comparing False and True: This is a boolean value representing truth
