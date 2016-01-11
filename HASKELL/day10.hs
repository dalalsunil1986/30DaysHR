-- Day 10 Binary

solve :: Int -> IO()
solve n
    | n == 0 = return ()
    | otherwise = do
        temp <- getLine
        let base10 = read temp :: Int
        convertToBinary base10
        putStrLn ""
        solve $ n -1

convertToBinary :: Int -> IO()
convertToBinary a
    | a == 0 = return ()
    | otherwise = do
        convertToBinary (div a 2)
        putStr . show $ mod a 2
        -- show (mod a 2)

main :: IO()
main = do
    input <- getLine
    solve (read input :: Int)
