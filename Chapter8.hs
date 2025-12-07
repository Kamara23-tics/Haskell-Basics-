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

--Task 5: Define a type Person using record syntax that includes name :: String, age :: Int, and isEmployed :: Bool.
--Create a person1 who is employed, and a person2 who is unemployed.
data Person = Person
    { name :: String
    , age :: Int
    , isEmployed :: Bool
    } deriving (Show, Eq)

person1 :: Person
person1 = Person
    { name = "Grace"
    , age = 25
    , isEmployed = True
    }

person2 :: Person
person2 = Person
    { name = "Kelsey"
    , age = 18
    , isEmployed = False
    }

main :: IO ()
main = do
    putStrLn "Person examples:"
    print person1
    print person2data Person = Person
    { name :: String
    , age :: Int
    , isEmployed :: Bool
    } deriving (Show, Eq)

person1 :: Person
person1 = Person
    { name = "Grace"
    , age = 25
    , isEmployed = True
    }

person2 :: Person
person2 = Person
    { name = "Kelsey"
    , age = 18
    , isEmployed = False
    }

main :: IO ()
main = do
    putStrLn "Person examples:"
    print person1
    print person2
--Output:
Person examples:
Person {name = "Grace", age = 25, isEmployed = True}
Person {name = "Kelsey", age = 18, isEmployed = False}

--Task 6: Define a type Shape using record syntax with fields center :: (Float, Float), color :: String, and radius :: Float for circles, and width :: Float, height :: Float, and color :: String for rectangles.
--Create an instance of Shape for a circle and a rectangle.
data Shape = Circle
    { center :: (Float, Float)
    , color :: String
    , radius :: Float
    }
    | Rectangle
    { rectCenter :: (Float, Float)
    , rectColor :: String
    , width :: Float
    , height :: Float
    } deriving (Show, Eq)

circle :: Shape
circle = Circle
    { center = (0.0, 0.0)
    , color = "Red"
    , radius = 5.0
    }

rectangle :: Shape
rectangle = Rectangle
    { rectCenter = (10.0, 10.0)
    , rectColor = "Blue"
    , width = 8.0
    , height = 4.0
    }

main :: IO ()
main = do
    putStrLn "Shape examples:"
    print circle
    print rectangle
--Output:
Shape examples:
Circle {center = (0.0,0.0), color = "Red", radius = 5.0}
Rectangle {rectCenter = (10.0,10.0), rectColor = "Blue", width = 8.0, height = 4.0}

--Task 7:Define a new type Animal using data with constructors Dog String and Cat String.
--Create a function describeAnimal :: Animal -> String that describes the animal.
--Create instances for a dog and a cat.
data Animal = Dog String | Cat String
    deriving (Show, Eq)

describeAnimal :: Animal -> String
describeAnimal (Dog name) = "This is a dog named " ++ name
describeAnimal (Cat name) = "This is a cat named " ++ name

dog :: Animal
dog = Dog "Buddy"

cat :: Animal
cat = Cat "Whiskers"

main :: IO ()
main = do
    putStrLn "Animal examples:"
    putStrLn $ describeAnimal dog
    putStrLn $ describeAnimal cat
---Output:
Animal examples:
This is a dog named Buddy
This is a cat named Whiskers

--Task 8: Using type synonyms, create a type synonym Name for String and a type synonym Age for Int.
--Define a function greet :: Name -> Age -> String that takes a name and age and returns a greeting.
type Name = String
type Age = Int

greet :: Name -> Age -> String
greet name age = "Hi, " ++ name ++ "! You are " ++ show age ++ " years old."

main :: IO ()
main = do
    putStrLn $ greet "Ify" 30
    putStrLn $ greet "Redo" 25
    putStrLn $ greet "Cain" 42
--Output:
Hi, Ify! You are 30 years old.
Hi, Redo! You are 25 years old.
Hi, Cain! You are 42 years old.

--Task 9:Define a type Transaction with fields from :: Address, to :: Address, amount :: Value, and transactionId :: String.
--Define a function createTransaction :: Address -> Address -> Value -> String that creates a Transaction and returns the transaction id.
type Address = String
type Value = Int

data Transaction = Transaction
    { from :: Address
    , to :: Address
    , amount :: Value
    , transactionId :: String
    } deriving (Show, Eq)

createTransaction :: Address -> Address -> Value -> String
createTransaction fromAddr toAddr val = 
    let txId = "TX-" ++ fromAddr ++ "-" ++ toAddr ++ "-" ++ show val
        tx = Transaction
            { from = fromAddr
            , to = toAddr
            , amount = val
            , transactionId = txId
            }
    in transactionId tx

main :: IO ()
main = do
    putStrLn "Transaction examples:"
    let txId1 = createTransaction "addr1" "addr2" 100
    putStrLn $ "Transaction ID: " ++ txId1
    
    let txId2 = createTransaction "wallet_A" "wallet_B" 500
    putStrLn $ "Transaction ID: " ++ txId2
--Output:
Transaction examples:
Transaction ID: TX-addr1-addr2-100
Transaction ID: TX-wallet_A-wallet_B-500
