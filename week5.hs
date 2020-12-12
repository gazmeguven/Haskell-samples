--haskell functional olmasının yanında statik bir tip sistemine sahip
--yani her expression tipi compile time'da belli olur
--haskell'in farkı ise type inference yeteneğine sahip olması
-- :t expression alır ve tipini döner

--fonksiyon adı :: fonksiyonun aldığı parametre -> fonksiyonun dönüş parametresi

--eğer fonksiyon birden fazla tip için çalışıyorsa type variable'ları kullanarak fonksiyonu tanımlayabiliriz

--typeclass; Java'daki collection gibi

addVectors :: (Floating a, Num b) => (a, b) -> (a, b) -> (a, b)
addVectors a b = (fst a + fst b, snd a + snd b) 
addVectors' (a,b)(c,d) = (a + c, b + d)