import qualified Data.ByteString.Char8 as C
import Data.Typeable
import Data.Char
main = do
  contents <- getContents
  let ls = lines contents
  let x = map (\l -> checkLine l ls) ls
  let y = getAns x
  print y

getAns [] = ("","")
getAns ((i,j):xs)
  | i /= j = (i,j)
  | otherwise = getAns xs

checkLine l [] = (l,l)
checkLine l (x:xs)
  | checkMatch l x True = (l, x)
  | otherwise = checkLine l xs

checkMatch [] [] _ = True
checkMatch (c1:s1) (c2:s2) b
  | c1 == c2 = checkMatch s1 s2 b
  | b = checkMatch s1 s2 False
  | otherwise = False
