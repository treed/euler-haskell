main :: IO ()
main = print $ sum [ x | x <- [1..999], any (divisible_by x) [3, 5] ]

divisible_by :: Int -> Int -> Bool
divisible_by a b = a `mod` b == 0
