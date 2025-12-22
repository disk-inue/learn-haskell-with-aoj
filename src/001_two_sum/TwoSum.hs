-- Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
-- You may assume that each input would have exactly one solution, and you may not use the same element twice.
-- You can return the answer in any order.

-- Example 1:
-- Input: nums = [2,7,11,15], target = 9
-- Output: [0,1]
-- Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

-- Example 2:
-- Input: nums = [3,2,4], target = 6
-- Output: [1,2]

-- Example 3:
-- Input: nums = [3,3], target = 6
-- Output: [0,1]

-- Constraints:
-- 2 <= nums.length <= 104
-- -109 <= nums[i] <= 109
-- -109 <= target <= 109
-- Only one valid answer exists.

-- Follow-up: Can you come up with an algorithm that is less than O(n2) time complexity?

-- TwoSum :: [Int] -> Int -> [Int]

-- [2,7,11,15]
-- [(0,2),(1,7),(2,11),(3,15)]
getIndexList :: [Int] -> [(Int, Int)]
getIndexList nums = zip [0..] nums

isNextIndex :: Int -> (Int, Int) -> Bool
isNextIndex nextIndex (index, _) = index == nextIndex

getNextItem :: [(Int, Int)] -> Int -> (Int, Int)
getNextItem indexList nextIndex = filter (isNextIndex nextIndex) indexList 

sumPair :: (Int, Int) -> (Int, Int) -> ([(Int, Int)], Int)
sumPair (index1, value1) (index2, value2) = ([(index1, value1), (index2, value2)], value1 + value2)

-- [([(0,2),(1,7)],9),([(0,2),(2,11)],13),([(0,2),(3,15)],17),([(1,7),(2,11)],18),([(1,7),(3,15)],22),([(2,11),(3,15)],26)]
getAllPairsWithSums :: [(Int, Int)] -> [([(Int, Int)], Int)]
getAllPairsWithSums indexList = map sumPair indexList


