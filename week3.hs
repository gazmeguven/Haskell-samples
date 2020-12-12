length' xs = sum [1 | _ <- xs] --underscore anonymous varible
--parametre olarak liste alıyorsan s ekle, x desen de kod çalışır ama okunurluk için xs daha iyi

removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

--zip, iki liste birleştirilir, ikinci listede sınır belli ise lazy evaluation

lucky 7 = "LUCKY NUMBER SEVEN!"  
lucky _ = "Sorry, you're out of luck, pal!" --kapsayıcı olan pattern alta yazılmalı
--pattern matching ile birden fazla pattern kullanılabilir ve patternlerin farklı farklı eşleşebileceği bir yapı oluşturabiliriz.

head' [] = []
head' (x:xs) = x
--patternlerin tüm caseleri kapsaması gerekir

last' [x] = x
last' (x:xs) = last' xs

factorial 0 = 1
factorial x = x * factorial (x - 1)