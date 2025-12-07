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
