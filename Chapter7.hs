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
