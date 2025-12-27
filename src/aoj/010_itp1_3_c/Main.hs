-- 今まで学習した内容で解けた
-- パターンマッチを使う
--

judgeOrdNum :: Int -> Int -> String
judgeOrdNum x y
  | x < y = show x ++ " " ++ show y
  | otherwise = show y ++ " " ++ show x

inputNums :: Int -> Int -> IO ()
inputNums 0 0 = pure ()
inputNums x y = do
  putStrLn $ judgeOrdNum x y
  [a, b] <- map (read :: String -> Int) . words <$> getLine
  inputNums a b

main :: IO ()
main = do
  [x, y] <- map (read :: String -> Int) . words <$> getLine
  inputNums x y
