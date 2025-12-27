-- divが商、modが余り
-- バッククォートで囲っているのは中置記法
-- 本来はdiv a b, mod a b
-- 数式のように読みやすくするためにこの記法
-- readLnはIntの配列を入力から受け取れる
main :: IO ()
main = do
  -- inputSStr <- getLine
  -- let inputS = read inputSStr :: Int
  -- let s = (inputS `mod` (60 * 60)) `mod` 60
  -- let m = ((inputS - s) `mod` (60 * 60)) `div` 60
  -- let h = inputS `div` 3600
  inputS <- readLn :: IO Int
  let s = inputS `mod` 60
      m = (inputS `div` 60) `mod` 60
      h = inputS `div` 3600
  putStrLn $ show h ++ ":" ++ show m ++ ":" ++ show s
