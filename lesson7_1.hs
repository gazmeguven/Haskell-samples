--getContents girdi olduğu sürece devam eder, ta ki end of line'ı görene kadar
--cat ekrana dosyanın içeriğini basar

import System.IO  
  
main = do  
    handle <- openFile "girlfriend.txt" ReadMode  
    contents <- hGetContents handle  
    putStr contents  
    hClose handle  
	
--hGetContents content almak için kullanırız
--readFile, writeFile, appendFile