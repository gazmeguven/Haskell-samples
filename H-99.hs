-- 1) Find the last element of a list
--Solution 1
myLast [x] = x
myLast (x:xs) = myLast xs
--Solution 2
myLast' = head . reverse
--Solution 3
myLast'' x = scanl (const id) x
--Solution 4
myLast''' x = foldl (flip const) x
--Solution 5
myLast'''' x = foldl (curry snd) x

-- 2) Find the last but one element of a list.
--Solution 1
myButLast [x,_] = x
myButLast (x:xs) = myButLast xs
--Solution 2
myButLast' = last . init
--Solution 3
myButLast'' = head . tail . reverse
--Solution 4
myButLast''' = head . reverse . init

-- 3) Find the K'th element of a list. The first element in the list is number 1.
elementK (x:xs) 1 = x
elementK (x:xs) k = elementK xs (k-1)

-- 4) Find the number of elements of a list.
--Solution 1
myLength [] = 0
myLength (x:xs)  = 1 + myLength xs
--Solution 2
myLength' = sum . map(\_->1)
--Solution 3
myLength'' :: [a] -> Int
myLength'' = foldl (\acc x -> acc+1) 0
--Solution 4
myLength''' :: [a] -> Int
myLength''' = foldr (\x acc -> acc+1) 0
--Solution 5
myLength'''' :: [a] -> Int
myLength'''' = foldr (\x -> (+1)) 0

-- 5) Reverse a list.
--Solution 1
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]
--Solution 2
myReverse' :: [a] -> [a]
myReverse' = foldl (flip (:)) []
-- Daha maliyetli bir çözüm

-- 6) Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).
--Solution 1
isPalindrome x = x == reverse x
--Solution 2
isPalindrome' [] = True
isPalindrome' [_] = True
isPalindrome' x
 | head x == last x = isPalindrome' (init (tail x))
 | otherwise = False
 
-- 7) Flatten a nested list structure.
data NestedList a = Elem a | List [NestedList a]
myFlatten (List []) = []
myFlatten (Elem x) = [x]
myFlatten (List (x:xs)) = myFlatten x ++ myFlatten (List xs)

-- 8) Eliminate consecutive duplicates of list elements.
--Solution 1
compress [] = []
compress [x] = [x]
compress (x:y:ys)
 | x == y = compress (y:ys)
 | otherwise = x:compress (y:ys)
--Solution 2
compress' :: Eq a => [a] -> [a]
compress' x = foldr (\a b -> if a == (head b) then b else a:b) [last x] x 
 
-- 9) Pack consecutive duplicates of list elements into sublists. 
-- If a list contains repeated elements they should be placed in separate sublists.
--Solution 1
pack x = reverse (packHelper x [] [])

packHelper [] z w = z:w
packHelper [x] z w = (x:z):w
packHelper (x:y:ys) z w
 | x == y = packHelper (y:ys) (x:z) w
 | otherwise = packHelper (y:ys) [] ((x:z):w)

--Solution 2
pack' [] = []
pack' [x] = [[x]]
pack' (x:xs)
 | elem x (head (pack' xs)) = (x:head (pack' xs)):tail (pack' xs)
 | otherwise = [x]:pack' xs