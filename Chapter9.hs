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

--Task 2:
