--Task 1: -- Define a type synonym for entities with addresses
type Entity a = (a, String)

data Person = Person 
  { personName :: String
  , personAge :: Int
  } deriving (Show)

data Company = Company
  { companyName :: String
  , companyEmployees :: Int
  } deriving (Show)

personEntity :: Entity Person
personEntity = (Person "Okeke" 30, "123 Main St")

companyEntity :: Entity Company
companyEntity = (Company "Wimsio" 50, "15 Igbo rd.Kano")

getAddress :: Entity a -> String
getAddress (_, address) = address

getEntityData :: Entity a -> a
getEntityData (entity, _) = entity

main :: IO ()
main = do
  putStrLn "Entity Type Demonstration:"
  putStrLn $ "Person: " ++ show (getEntityData personEntity)
  putStrLn $ "Address: " ++ getAddress personEntity
  putStrLn ""
  putStrLn $ "Company: " ++ show (getEntityData companyEntity)
  putStrLn $ "Address: " ++ getAddress companyEntity
--Output:
Entity Type Demonstration:
Person: Person {personName = "Okeke", personAge = 30}
Address: 123 Main St

Company: Company {companyName = "Wimsio", companyEmployees = 50}
Address: 15 Igbo rd.Kano

--Task 2: Create a data type Box a with two constructors, Empty and Has a, to represent a box that may or may not contain a value.
data Box a = Empty | Has a
  deriving (Show, Eq)

isEmpty :: Box a -> Bool
isEmpty Empty = True
isEmpty (Has _) = False

unbox :: a -> Box a -> a
unbox defaultVal Empty = defaultVal
unbox _ (Has x) = x

mapBox :: (a -> b) -> Box a -> Box b
mapBox _ Empty = Empty
mapBox f (Has x) = Has (f x)

main :: IO ()
main = do
  let emptyBox = Empty :: Box Int
  let fullBox = Has 42 :: Box Int
  let stringBox = Has "Hello" :: Box String
  
  putStrLn "Box Examples:"
  putStrLn $ "Empty box: " ++ show emptyBox
  putStrLn $ "Full box: " ++ show fullBox
  putStrLn $ "String box: " ++ show stringBox
  putStrLn ""
  
  putStrLn $ "Is empty box empty? " ++ show (isEmpty emptyBox)
  putStrLn $ "Is full box empty? " ++ show (isEmpty fullBox)
  putStrLn ""
  
  putStrLn $ "Unbox with default 0: " ++ show (unbox 0 emptyBox)
  putStrLn $ "Unbox with default 0: " ++ show (unbox 0 fullBox)
  putStrLn ""
  
  let doubled = mapBox (*2) fullBox
  putStrLn $ "Double the value in fullBox: " ++ show doubled

Output:
Box Examples:
Empty box: Empty
Full box: Has 42
String box: Has "Hello"

Is empty box empty? True
Is full box empty? False

Unbox with default 0: 0
Unbox with default 0: 42

Double the value in fullBox: Has 84
--Task 3: Create a function addN that takes a number and a Box a. If the box contains a number, add the given number to it.

Output:
Box Examples:
Empty box: Empty
Full box: Has 42
String box: Has "Hello"

Is empty box empty? True
Is full box empty? False

Unbox with default 0: 0
Unbox with default 0: 42

Double the value in fullBox: Has 84

Testing addN:
Add 10 to empty box: Empty
Add 10 to full box: Has 52
Add 5 to Has 100: Has 105
