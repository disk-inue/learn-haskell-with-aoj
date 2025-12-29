-- case文の扱い方
--
calc :: Int -> String -> Int -> Int
calc a op b = case op of
  "+" -> a + b
  "-" -> a - b
  "*" -> a * b
  "/" -> a `div` b
  _ -> error "Invalid op"

calcLoop :: IO ()
calcLoop = do
  [a, op, b] <- words <$> getLine
  case op of
    "?" -> pure ()
    _ -> do
      print $ calc (read a) op (read b)
      calcLoop

main :: IO ()
main = calcLoop
