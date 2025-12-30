printRow :: Bool -> Int -> String
printRow True w = replicate w '#'
printRow False w = "#" ++ replicate (w - 2) '.' ++ "#"

printRowJudge :: Int -> Int -> Int -> String
printRowJudge h w row
  | row == 1 || row == h = printRow True w
  | otherwise = printRow False w

generateRow :: Int -> Int -> Int -> String
generateRow h w row
  | row == 1 || row == h = replicate w '#'
  | otherwise = "#" ++ replicate (w - 2) '.' ++ "#"

printRec :: Int -> Int -> Int -> IO ()
printRec h w row
  | row == h = putStrLn $ generateRow h w row
  | otherwise = do
      putStrLn $ generateRow h w row
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
