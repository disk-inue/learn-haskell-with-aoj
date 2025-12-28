-- 浮動小数の扱いと出力

import Text.Printf (printf)

main :: IO ()
main = do
  [x, y] <- map (read :: String -> Int) . words <$> getLine
  let (d, r, f) = (x `div` y, x `mod` y, fromIntegral x / fromIntegral y :: Double)
  printf "%d %d %f\n" d r f
