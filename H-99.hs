-- 1) Find the last element of a list
myLast [x] = x
myLast (x:xs) = myLast xs

-- 2) Find the last but one element of a list.
myButLast [x,_] = x
myButLast (x:xs) = myButLast xs

-- 3) Find the K'th element of a list. The first element in the list is number 1.
elementK (x:xs) 1 = x
elementK (x:xs) k = elementK xs (k-1)

-- 4) Find the number of elements of a list.
myLength [] = 0
myLength (x:xs)  = 1 + myLength xs

-- 5) Reverse a list.
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]