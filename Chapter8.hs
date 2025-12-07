--Task 1: Type Synonyms and Basic Function
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

--Task 2:
type Address = String
type Value = Int

generateTx :: Address -> Address -> Value -> String
generateTx from to amount = from ++ " " ++ to ++ " " ++ show amount

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
    putStrLn "Transaction examples:"
    putStrLn $ generateTx "addr1" "addr2" 100
    putStrLn $ generateTx "wallet_A" "wallet_B" 500
    putStrLn ""
    putStrLn "Person example:"
    print bob
--Output:
Transaction examples:
addr1 addr2 100
wallet_A wallet_B 500

Person example:
Person {name = "Bob", address = ("123 Main St",12345), paymentMethod = Cash}

