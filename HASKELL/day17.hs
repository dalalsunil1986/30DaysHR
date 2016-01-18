-- Day 17 : Exceptions

import           Control.Monad

raiseNumber :: Int -> Int -> IO()
raiseNumber n p
    | n < 0 || p < 0 = error "n and p should be non-negative"
    | otherwise = print $ round $ (**) (fromIntegral n) (fromIntegral p)


main :: IO()
main = do
    t <- readLn :: IO Int
    forM_ [1..t] $  \_ -> do
        inp <- getLine
        let arr = map (read :: String -> Int) $ words inp

        raiseNumber (head arr) (last arr)
        -- result <- try (evaluate (div (head arr) (last arr))) :: IO (Either SomeException Int)
        -- case result of
        --     Left _  -> putStrLn "n and p should be non-negative"
        --     Right val -> print val
