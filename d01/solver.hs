import Data.Char
main = do
  contents <- getContents
  let ls = lines contents
  let splits = map (\(x:xs) -> (x,xs)) ls
  let nums = map value splits
  print (foldr (+) 0 nums)

value ('+',xs) = read xs :: Int
value ('-',xs) = - read xs :: Int

doForEach _ [] = return ()
doForEach action (x:ls) = do
  action x
  doForEach action ls

