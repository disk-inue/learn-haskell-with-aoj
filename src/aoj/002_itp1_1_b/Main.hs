-- 入力の受け方を知る
-- StringからIntへ変換するreadも知れた
-- Stringじゃない型を出力する場合printを使うのも知れた
-- <- はIOの箱から値を取り出して束縛する
-- letも束縛
-- doはIOをつなぐ糖衣構文

cube :: Int -> Int
cube x = x * x * x

main :: IO ()
main = do
  xStr <- getLine
  let x = read xStr :: Int
  print $ cube x

-- x <- readLn :: IO Int
-- print (x * x * x)
