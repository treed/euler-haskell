main :: IO ()
main = print $ sum $ filter even $ takeWhile (< 4000000) fibonacci

fibonacci :: [Int]
fibonacci = [1, 1] ++ fib 1 1

fib :: Int -> Int -> [Int]
fib prev cur = [next] ++ fib cur next
        where next = prev + cur
