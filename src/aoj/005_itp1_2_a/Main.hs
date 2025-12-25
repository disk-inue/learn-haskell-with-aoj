judgeNum :: Int -> Int -> String
judgeNum a b
  | a > b = "a > b"
  | a < b = "a < b"
  | otherwise = "a == b"

main :: IO ()
main = do
  [a, b] <- map (read :: String -> Int) . words <$> getLine
  putStrLn $ judgeNum a b
