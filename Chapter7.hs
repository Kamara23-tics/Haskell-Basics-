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
