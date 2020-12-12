doubleme x = x + x	--type inference 

square x = x * x

doubleus x y = doubleme x + doubleme y

doubleSmallNumber x = if x > 100  
                        then x  
                        else x*2   

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1


--High order liste yapısına uygun olarak çalışır
--Cons operatörü listeleri oluşturmak için en önemli operatör

--Range, listeleri yazmanın kolay yolu. Listede bir örüntü var ise kullanılabilir.