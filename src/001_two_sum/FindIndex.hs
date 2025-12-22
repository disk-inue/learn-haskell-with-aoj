-- [2, 7, 11, 13]
-- target = 11
xs = [2, 7, 11, 15]
target = 9

getIndexList :: [Int] -> [(Int, Int)]
getIndexList nums = zip [0..] nums

isTarget :: (Int,Int) -> Int -> Bool
isTarget (_, value) target = value == target

getIndex :: [(Int, Int)] -> Int -> Int
getIndex indexList target = fst (head (filter (\x -> isTarget x target) indexList))

index = getIndex (getIndexList xs) target


