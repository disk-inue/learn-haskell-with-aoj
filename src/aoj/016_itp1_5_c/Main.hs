-- cycle, takeの使い方
-- even/odd
--
generateRow :: Int -> Int -> String
generateRow w row
  | even row = take w (cycle ".#")
  | otherwise = take w (cycle "#.")

printRec :: Int -> Int -> Int -> IO ()
printRec h w row
  | row == h = putStrLn $ generateRow w row
  | otherwise = do
      putStrLn $ generateRow w row
      printRec h w (row + 1)

loop :: IO ()
loop = do
  [h, w] <- map (read :: String -> Int) . words <$> getLine
  case (h, w) of
    (0, 0) -> pure ()
    _ -> do
      printRec h w 1
      putStrLn ""
      loop

main :: IO ()
main = loop
