import Control.Monad (replicateM)
import Data.List (intercalate)

buildings :: [[[Int]]]
buildings = replicate 4 $ replicate 3 $ replicate 10 0

-- printFloor :: [Int] -> IO ()
-- printFloor floor = do
--   putStrLn $ " " ++ unwords (map show floor)
printFloor :: [Int] -> String
printFloor floor = " " ++ unwords (map show floor)

-- printBuilding :: [[Int]] -> IO ()
-- printBuilding [] = pure ()
-- printBuilding (one : xs) = do
--   printFloor one
--   printBuilding xs
printBuilding :: [[Int]] -> String
printBuilding = unlines . map printFloor

-- printBuildings :: [[[Int]]] -> IO ()
-- printBuildings [] = pure ()
-- printBuildings [one] = do
--   printBuilding one
-- printBuildings (one : xs) = do
--   printBuilding one
--   putStrLn $ concat $ replicate 20 "#"
--   printBuildings xs
printBuildings :: [[[Int]]] -> IO ()
printBuildings bs = putStr $ intercalate (replicate 20 '#' ++ "\n") (map printBuilding bs)

updateAt :: Int -> (a -> a) -> [a] -> [a]
updateAt index f xs =
  let (before, target : after) = splitAt index xs
   in before ++ [f target] ++ after

-- updateVisitor :: [Int] -> Int -> Int -> [Int]
-- updateVisitor floor roomNumber people =
--   take (roomNumber - 1) floor ++ [floor !! (roomNumber - 1) + people] ++ drop roomNumber floor

-- updateBuilding :: [[Int]] -> Int -> Int -> Int -> [[Int]]
-- updateBuilding building floorNumber roomNumber people =
--   take (floorNumber - 1) building ++ [updateVisitor (building !! (floorNumber - 1)) roomNumber people] ++ drop floorNumber building

-- updateBuildings :: [[[Int]]] -> Int -> Int -> Int -> Int -> [[[Int]]]
-- updateBuildings buildings buildingNumber floorNumber roomNumber people =
--   take (buildingNumber - 1) buildings ++ [updateBuilding (buildings !! (buildingNumber - 1)) floorNumber roomNumber people] ++ drop buildingNumber buildings

updateBuildings :: [[[Int]]] -> (Int, Int, Int, Int) -> [[[Int]]]
updateBuildings bs (b, f, r, v) =
  updateAt (b - 1) (updateAt (f - 1) (updateAt (r - 1) (+ v))) bs

processInputs :: [[[Int]]] -> [(Int, Int, Int, Int)] -> [[[Int]]]
processInputs = foldl updateBuildings

parseInput :: String -> (Int, Int, Int, Int)
parseInput line = case map read (words line) of
  [b, f, r, v] -> (b, f, r, v)
  _ -> error "Invalid input"

-- loop :: Int -> Int -> [[[Int]]] -> IO ()
-- loop infoCount counter buildings
--   | counter > infoCount = do
--       printBuildings buildings
--   | otherwise = do
--       [b, f, r, v] <- map (read :: String -> Int) . words <$> getLine
--       let newBuildings = updateBuildings buildings b f r v
--       loop infoCount (counter + 1) newBuildings

main :: IO ()
main = do
  -- infoCount <- readLn :: IO Int
  -- loop infoCount 1 buildings
  n <- readLn :: IO Int
  inputs <- replicateM n getLine
  let updates = map parseInput inputs
  let result = foldl updateBuildings buildings updates
  printBuildings result
