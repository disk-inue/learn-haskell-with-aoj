main :: IO ()
main = do
  -- xyStr <- getLine
  -- let [xStr, yStr] = words xyStr :: [String]
  -- x = read xStr :: Int
  -- y = read yStr :: Int
  -- putStrLn (show (x * y) ++ " " ++ show (2 * (x + y)))
  [x, y] <- map (read :: String -> Int) . words <$> getLine
  putStrLn $ show (x * y) ++ " " ++ show (2 * (x + y))
