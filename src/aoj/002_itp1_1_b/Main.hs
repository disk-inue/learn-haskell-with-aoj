main :: IO ()
main = do
  xStr <- getLine
  let x = read xStr :: Int
  print (x * x * x)
  -- x <- readLn :: IO Int
  -- print (x * x * x)

