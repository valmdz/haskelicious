import Prelude hiding (reverse)
import System.Environment

-- A list can either be empty;
--
--   []
--
-- or an element `n` followed by another list `ns`;
--
--   (n:ns)
--
reverse :: [a] -> [a]
reverse az = case az of
  []       -> []
  (x : xs) -> reverse xs ++ singleton x


singleton :: a -> [a]
singleton x = x : []

-- {:)  :: Int   -> [Int] -> [Int]
-- (++) :: [Int] -> [Int] -> [Int]

exampleInput :: [Char]
exampleInput = 'o':'c':'i':'r':'e':'d':'e':'f':[]
-- aka:
--     ['o','c','i','r','e','d','e','f']
-- aka:
--     "ociredef"

main :: IO ()
main = do
  xs <- getLine
  putStrLn . reverse $ xs

-- reverse [1,2,3,3]

-- az = 1 : (2 : 3 : 3 : [])
-- x  = 1
-- xs =      2 : 3 : 3 : []
--
-- result = 3 : 3 : 2 : 1 : []
