-- intercalateを始め使った
-- unlinesを使うと末尾に\nがつくからputStrLnだと#\n\nになる

printRow :: Int -> String
printRow w = replicate w '#'

printCol :: Int -> Int -> [String]
printCol h w = replicate h (printRow w)

loop :: IO ()
loop = do
  [h, w] <- map (read :: String -> Int) . words <$> getLine
  case (h, w) of
    (0, 0) -> pure ()
    _ -> do
      -- putStrLn $ intercalate "\n" (printCol h w)
      putStr $ unlines (printCol h w)
      putStrLn ""
      loop

main :: IO ()
main = loop
