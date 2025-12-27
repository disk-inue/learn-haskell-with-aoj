-- mapが出てきた
-- 関数合成(.)も出てきた
-- <$>はIO内の中身に関数を適用するFunctor
-- wordsは空白区切りの文字列を配列にして返す
-- (.)と<$>の処理順がわからなくて混乱したけど、優先順位が(.),<$>,$というの知ると理解が進んだ
-- showはStringにしてくれる
main :: IO ()
main = do
  -- xyStr <- getLine
  -- let [xStr, yStr] = words xyStr :: [String]
  -- x = read xStr :: Int
  -- y = read yStr :: Int
  -- putStrLn (show (x * y) ++ " " ++ show (2 * (x + y)))
  [x, y] <- map (read :: String -> Int) . words <$> getLine
  putStrLn $ show (x * y) ++ " " ++ show (2 * (x + y))
