-- Day 10 = Binary

main ::IO()
main = interact $ unlines . map solve . drop 1 . lines

solve :: String -> String
solve = concatMap show . convertToBin . read

convertToBin :: Int -> [Int]
convertToBin = reverse . map (`mod` 2) . takeWhile (>0) . iterate (`div` 2)
