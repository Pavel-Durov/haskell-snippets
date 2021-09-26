import Lib

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

main :: IO()
main = putStrLn(reverse' "0123456")
