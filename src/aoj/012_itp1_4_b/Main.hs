-- 円周率piの利用
--
import Text.Printf (printf)

main :: IO ()
main = do
  r <- (read :: String -> Double) <$> getLine
  printf "%f %f\n" (r * r * pi) (2 * r * pi)
