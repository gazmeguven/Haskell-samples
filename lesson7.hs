--Input and Output--

main = do --do sayesinde birden fazla IO komutu kullanabiliriz
    putStrLn "Hello, what's your name?"  
    name <- getLine  --getLine, kullanıcının girdiği ifadeyi string'e dönüştürür
    putStrLn ("Hey " ++ name ++ ", you rock!") 
	
--putStr sonuna new line karakteri koymaz
--sequence sonucu liste halinde saklayabilir
--mapM sequence map kısaltılmış, özelleşmiş hali
--mapM_ ile aynı işlevde fakat geri dönüş(output) değerlerini görmek istemiyorsak kullanabiliriz
--forever işlem sonsuza kadar devam eder
