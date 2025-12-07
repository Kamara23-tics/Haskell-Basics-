--Task 1: 
type Address = String
type Value = Int

generateTx :: Address -> Address -> Value -> String
generateTx from to amount = from ++ " " ++ to ++ " " ++ show amount

main :: IO ()
main = do
    putStrLn $ generateTx "addr1" "addr2" 100
    putStrLn $ generateTx "wallet_A" "wallet_B" 500
    putStrLn $ generateTx "0x123abc" "0x456def" 250
--Output:
addr1 addr2 100
wallet_A wallet_B 500
0x123abc 0x456def 250

--Task 2:Define a new type PaymentMethod with the constructors Cash, Card, and Cryptocurrency.
--Create a Person type that includes a name, address (tuple of String and Int), and a payment method.
--Create a person bob who pays with cash.
data PaymentMethod = Cash | Card | Cryptocurrency
    deriving (Show, Eq)

data Person = Person
    { name :: String
    , address :: (String, Int)
    , paymentMethod :: PaymentMethod
    } deriving (Show, Eq)

bob :: Person
bob = Person
    { name = "Bob"
    , address = ("123 Main St", 12345)
    , paymentMethod = Cash
    }

main :: IO ()
main = do
    putStrLn "Person example:"
    print bob

Person example:
Person {name = "Bob", address = ("123 I Main St",12345), paymentMethod = Cash}

--Task 3: Define a type Shape with constructors Circle Float and Rectangle Float Float.
--Create a function area :: Shape -> Float that calculates the area of the shape.
--Calculate the area of a circle with radius 5 and a rectangle with sides 10 and 5.
data Shape = Circle Float | Rectangle Float Float
    deriving (Show, Eq)

area :: Shape -> Float
area (Circle r) = pi * r * r
area (Rectangle w h) = w * h

circle1 :: Shape
circle1 = Circle 5

rectangle1 :: Shape
rectangle1 = Rectangle 10 5

main :: IO ()
main = do
    putStrLn "Shape area calculations:"
    putStrLn $ "Circle with radius 5: " ++ show (area circle1)
    putStrLn $ "Rectangle with sides 10 and 5: " ++ show (area rectangle1)
-- Output:
Shape area calculations:
Circle with radius 5: 78.53982
Rectangle with sides 10 and 5: 50.0

--Task 4: Define a new type Employee using record syntax with fields name :: String and experienceInYears :: Float.
--Create an employee richard with 7.5 years of experience.
data Employee = Employee
    { name :: String
    , experienceInYears :: Float
    } deriving (Show, Eq)

richard :: Employee
richard = Employee
    { name = "Richard"
    , experienceInYears = 7.5
    }

main :: IO ()
main = do
    putStrLn "Employee example:"
    print richard
--Output:
Employee example:
Employee {name = "Richard", experienceInYears = 7.5}
