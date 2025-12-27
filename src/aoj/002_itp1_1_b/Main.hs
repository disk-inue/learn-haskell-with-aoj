-- 入力の受け方を知る
-- StringからIntへ変換するreadも知れた
-- Stringじゃない型を出力する場合printを使うのも知れた
-- <- はIOの箱から値を取り出して束縛する
-- letも束縛
-- doはIOをつなぐ糖衣構文
main :: IO ()
main = do
  xStr <- getLine
  let x = read xStr :: Int
  print (x * x * x)

-- x <- readLn :: IO Int
-- print (x * x * x)
