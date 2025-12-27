-- ガード式を使ってみる
-- 演算子の優先順位 (.)高い, <$>中, $一番低い

-- $は関数適用(括弧省略), <$>はFunctorの中身に関数を適用

judgeNum :: Int -> Int -> String
judgeNum a b =
  if a > b
    then "a > b"
    else
      if a < b
        then "a < b"
        else "a == b"

main :: IO ()
main = do
  [a, b] <- map (read :: String -> Int) . words <$> getLine
  putStrLn $ judgeNum a b
