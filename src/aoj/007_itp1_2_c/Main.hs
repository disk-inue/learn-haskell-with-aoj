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
