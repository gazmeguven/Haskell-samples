factorial 0 = 1 --recursionda bitiş vermek önemli
factorial x = x * factorial (x - 1)

addVectors a b = (fst a + fst b, snd a + snd b) -- tuple vektörün kendisiyle match etti
addVectors' (a,b)(c,d) = (a + c, b + d)

first (x,_,_) = x

head' [] = error "List empty!"
head' (x:xs) = x

length' [] = 0
length' (_:xs) = 1 + length' xs

--guard patternlerden farklı olarak comperison yapabiliriz
--pattern olmadan guard yazamazsın 
--ilk olarak patterni tanımlaman gerekiyor
--guardlarda da caseler yukarıdan aşağıya doğru gider

bmiTell bmi  
    | bmi <= 18.5 = "You're underweight, you emo, you!"  
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"  
    | otherwise   = "You're a whale, congratulations!" 

--otherwise tüm durumlarla eşleşir, her zaman en altta yazılır	


--eski örnekleri bi de pattern matching kullanarak yapalım
tail' [] = error "List empty!"
tail' (_:xs) = xs

null' [] = True
null' _ = False

--reverse ve take için pattern matching ve recursion kullanıyoruz 
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

take' _ [] = []
take' 0 _ = []
take' x (y:ys) = y:take' (x-1) ys

-- drop' 0 y = y
-- drop' x (_:ys) = drop' (x-1) ys

--guard
drop' 0 y = y
drop' x (_:ys)
 | x > 5 = drop' (x-1) ys
 | otherwise = error "Index can not be little than zero"
 
maximum' [x] = x
maximum' (x:xs) 
 | x < maximum' xs = maximum' xs
 | otherwise       = x
 
minimum' [x] = x
minimum' (x:xs)
 | x > minimum' xs = minimum' xs
 | otherwise       = x

product' [] = error "Empty List!" 
product' [x] = x
product' (x:xs) = x * product' xs 

elem' _ [] = False
elem' x (y:ys)
 | x == y = True
 | otherwise = elem' x ys