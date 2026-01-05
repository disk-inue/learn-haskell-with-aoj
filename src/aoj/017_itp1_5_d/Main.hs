-- filterの使い方
checkIncludeThree :: Int -> Bool
checkIncludeThree 0 = False
checkIncludeThree x
  | x `mod` 10 == 3 = True
  | otherwise = checkIncludeThree (x `div` 10)

checkThreeMultiple :: Int -> Bool
checkThreeMultiple x = x `mod` 3 == 0

checkNum :: Int -> Bool
checkNum x = checkThreeMultiple x || checkIncludeThree x

main :: IO ()
main = do
  n <- readLn :: IO Int
  putStr " "
  putStrLn $ unwords $ map show $ filter checkNum [1 .. n]
