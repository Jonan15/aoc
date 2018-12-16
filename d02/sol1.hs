import qualified Data.ByteString.Char8 as C
import Data.Typeable
import Data.Char
main = do
  contents <- getContents
  let ls = lines contents
  let twos = map (\l -> checkn l l 2) ls
  let threes = map (\l -> checkn l l 3) ls
  let x = countbool twos
  let y = countbool threes
  print (x*y)

countbool [] = 0
countbool (b:bs)
  | b = 1 + countbool bs
  | otherwise = countbool bs

hasn c s n = C.count c (C.pack s) == n

checkn [] _ _ = False
checkn (c:s) l n
  | hasn c l n = True
  | otherwise = checkn s l n

