main :: IO ()
main = print $ prime_factors 13195

prime_factors :: Int -> [Int]
prime_factors input = prime_factorizer input input

prime_factorizer :: Int -> Int -> [Int]
prime_factorizer now orig
    | now < (int_sqrt orig) = []
    | otherwise             = [first_factor] ++ prime_factorizer post_factor orig
        where first_factor = factor_one now
              post_factor  = now `div` first_factor

factor_one :: Int -> Int
factor_one factoree = head [i | i <- [2..(int_sqrt factoree)], (factoree `divisible_by` i)]

divisible_by :: Int -> Int -> Bool
divisible_by a b = a `mod` b == 0

int_sqrt :: Int -> Int
int_sqrt a = floor $ sqrt $ fromIntegral a
