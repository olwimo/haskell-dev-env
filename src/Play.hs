fibn :: Int -> Int
fibn 0 = 1
fibn 1 = 1
fibn x = fibn (x - 2) + fibn (x - 1)

fib :: Int -> Int
fib x = let (_, f) = fib_i x in f
    where
        fib_i 0 = (0, 1)
        fib_i x = let (xm2, xm1) = fib_i (x - 1) in (xm1, xm2 + xm1)

fib2 :: Int -> Int
fib2 x = let (_, f) = fib2_i x (0, 1) in f
    where
        fib2_i 0 acc = acc
        fib2_i x (xm2, xm1) = fib2_i (x - 1) (xm1, xm2 + xm1)
