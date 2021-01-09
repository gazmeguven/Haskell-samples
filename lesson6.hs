--Modules--

-- module (oop = class) ; birbiriyle aynı domainde, birbiriyle ilgili olan fonksiyonları bir arada tutmak için kullanabileceğimiz araçlar
-- Prelude module
-- modül yüklemek için ; import <module name>

--import Data.List
--import Data.List (nub, sort) --Yüklenmek istenen fonksiyonlar parantez içinde yazıldı
--import Data.List hiding (nub, sort) -- hiding kullanmak istenmeyen fonksiyonlar için kullanılır
import qualified Data.List as List
import qualified Data.Map as Map -- qualified ile yüklediğimiz modüllerden gelen fonksiyonların ismi aynı olsa bile onları ayırt etmemize yarar
import qualified Data.Char as Char
import qualified Data.Set as Set

import Geometry

numUniques :: (Eq a) => [a] -> Int  
numUniques = length . List.nub