-- 今までに学習したことで解けた
judgeSorted :: Int -> Int -> Int -> String
judgeSorted x y z
  | x < y && y < z = "Yes"
  | otherwise = "No"

main :: IO ()
main = do
  [x, y, z] <- map (read :: String -> Int) . words <$> getLine
  putStrLn $ judgeSorted x y z
