multThree x y z = x*y*z

compareWithHundred x = compare 100 x 

divide x y = x / y

--Infix functions can also be partially applied by using sections.
-- To section an infix function, simply surround it with parentheses and only supply a parameter on one side.
-- That creates a function that takes one parameter and then applies it to the side that's missing an operand.

square' = (^2)

-- haskelde bir function başka bir function'ı parametre olarak alabilir
-- parantez içinde verilen parametre function olduğu anlamına gelir
-- applyTwice :: (a -> a) -> a -> a 

applyTwice f x = f (f x)

makePair x y = (x,y)

zipWith' _ _ [] = []
zipWith' _ [] _ = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

-- infix notation'a sahip olanlar için parantez içinde çağrılmalı

-- flip' :: (a -> b -> c) -> (b -> a -> c)  
flip' f y x = f x y 

-- bir function bir function'a parametre olarak alabilir demiştik
-- ama bu karmaşıklığa yol açar

-- map high order functions için fazlaca kullanılacak
-- listeyi alır liste döner
-- map :: (a -> b) -> [a] -> [b]


-- filter function alır ve onu listenin elemanlarına tek tek uygular
-- eğer doğru ise liste elemanı sonuçta yer alır
-- değilse sonuçta yer almaz
-- filter :: (a -> Bool) -> [a] -> [a]

-- Lambda notation fonksiyona isim vermeden doğrudan kullanıldığı yerde tanımlamak
-- Lambda ile daha karmaşık fonksiyonları yazabibiliriz
-- (filter (\xs -> length xs > 15)

-- foldl, map gibi bir pattern
-- büyük bir listeyi tek bir değere dönüştürür
-- liste alır değer döner
sum' xs = foldl (\acc x -> acc + x) 0 xs
sum''' xs = foldr (\x acc -> acc + x) 0 xs

sum'''' xs = foldl1 (\acc x -> acc + x) xs 
-- sum'''' :: (Num a) => [a] -> a
-- sum'''' = foldl1 (+)

--recursion--
sum'' [] = 0
sum'' (x:xs) = x + sum'' xs

-- scan fonksiyonu foldl ve foldr'ın özel bir hali 
-- scan fonksiyonu ek olarak accumlator'daki tüm değerleri listede döndürür
-- scanr reverse scanl'ye eşit olmaz

-- function application with $
-- ($) :: (a -> b) -> a -> b
-- f $ x = f x
-- right associative

-- (.) :: (b -> c) -> (a -> b) -> a -> c  
-- f . g = \x -> f (g x)  