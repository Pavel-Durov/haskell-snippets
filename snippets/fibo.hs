import Lib


fibo' :: Int -> [Int]
fibo' 1 = [1]
fibo' 2 = [1,1]
fibo' x = fibo(x-1) ++ [ ((last . fibo)(x-1)) + ((last . init . fibo)(x-1)) ]

-- using http://learnyouahaskell.com/syntax-in-functions
fibo :: Int -> [Int]
fibo 1 = [1]
fibo 2 = [1,1]
fibo x = 
    let next = pred x
        fst = last (fibo (next)) -- (last . fibo) x1 
        snd = last (init (fibo next)) -- (last . init . fibo) x1
    in fibo(next) ++ [fst + snd]
  
main :: IO()
main = putStrLn(show(fibo 10)) 
 