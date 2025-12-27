-- ループ処理の問題
-- pure()は何もしない関数
-- return()は古いらしく今はpure()らしい
-- カウントアップで始め実装したがカウントダウンがわかりやすかった

-- printHello :: Int -> Int -> IO ()
-- printHello nextCount maxCount
--   | nextCount > maxCount = do
--       putStrLn "Hello World"
--   | otherwise = do
--       putStrLn "Hello World"
--       printHello (nextCount + 1) maxCount

printHello :: Int -> IO ()
printHello 0 = pure ()
printHello n = do
  putStrLn "Hello World"
  printHello (n - 1)

main :: IO ()
main = printHello 1000
