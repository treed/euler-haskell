main :: IO ()
main = print $ sum $ filter (\ x -> x `mod` 2 == 0) $ takeWhile (< 4000000) fibonacci

fibonacci :: [Int]
fibonacci = [1, 1] ++ fib 1 1

fib :: Int -> Int -> [Int]
fib x y = [next] ++ fib y next
        where next = x + y
