-- 再帰でソートする問題
-- 始めはsort3で実装
-- 汎用的なbubbleを実装
-- (x :y :xs)は[1, 2, 3...]っていう配列の定義になる
-- y : bubble(x:xs)は[2, 1, 3...]っていう配列
-- bubble xs = xsは[],[1]の2つ以下の配列分岐
-- case bubble xs of ysはbubble xsの結果をysに束縛している
-- bubbleを汎用的にするとbubble :: Ord a => [a] -> [a]になる
-- Ordは大小比較ができる型

sort3 :: Int -> Int -> Int -> (Int, Int, Int)
sort3 a b c
  | b < a = sort3 b a c
  | c < b = sort3 a c b
  | otherwise = (a, b, c)

bubble :: [Int] -> [Int]
bubble (x : y : xs)
  | x > y = y : bubble (x : xs)
  | otherwise = x : bubble (y : xs)
bubble xs = xs

bubbleSort :: [Int] -> [Int]
bubbleSort xs =
  case bubble xs of
    ys
      | ys == xs -> ys
      | otherwise -> bubbleSort ys

main :: IO ()
main = do
  -- [x, y, z] <- map (read :: String -> Int) . words <$> getLine
  -- let (a, b, c) = sort3 x y z
  -- putStrLn $ show a ++ " " ++ show b ++ " " ++ show c
  xs <- map (read :: String -> Int) . words <$> getLine
  let ys = bubbleSort xs
  putStrLn $ unwords $ map show ys
