allCards :: [(String, Int)]
allCards = [(p, r) | p <- ["S", "H", "C", "D"], r <- [1 .. 13]]

printList :: [(String, Int)] -> IO ()
printList [] = pure ()
printList ((pattern, rank) : xs) = do
  putStrLn $ pattern ++ " " ++ show rank
  printList xs

loop :: Int -> Int -> [(String, Int)] -> IO ()
loop n index handsOfCards
  | index > n = do
      let notHandsOfCards = filter (`notElem` handsOfCards) allCards
      printList notHandsOfCards
  | otherwise = do
      input <- getLine
      let [pattern, rank] = words input
      loop n (index + 1) ((pattern, read rank) : handsOfCards)

main :: IO ()
main = do
  n <- readLn :: IO Int
  loop n 1 []
