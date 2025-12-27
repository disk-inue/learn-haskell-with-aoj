-- mapが出てきた
-- 関数合成(.)も出てきた
-- <$>はIO内の中身に関数を適用するFunctor
-- wordsは空白区切りの文字列を配列にして返す
-- (.)と<$>の処理順がわからなくて混乱したけど、優先順位が(.),<$>,$というの知ると理解が進んだ
-- showはStringにしてくれる
main :: IO ()
main = do
  xyStr <- getLine
  case words xyStr of
    (xStr : yStr : _) -> do
      let x = read xStr :: Int
          y = read yStr :: Int
      putStrLn (show (x * y) ++ " " ++ show (2 * (x + y)))
    _ -> error "Invalid error"
