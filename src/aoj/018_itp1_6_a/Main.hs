-- reverseの使い方
--
main :: IO ()
main = do
  _ <- readLn :: IO Int
  xs <- map (read :: String -> Int) . words <$> getLine
  putStrLn $ unwords $ map show $ reverse xs
