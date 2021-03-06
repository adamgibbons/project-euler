--https://projecteuler.net/problem=2

--Each new term in the Fibonacci sequence is generated by adding 
--the previous two terms. By starting with 1 and 2, the first 10 
--terms will be:

--1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

--By considering the terms in the Fibonacci sequence whose values 
--do not exceed four million, find the sum of the even-valued terms.

fib :: [Int] -> [Int]
fib list =  if null list then fib [2, 1]
            else if head list > 4000000 then tail list
            else fib ((head list) + head (tail list) : list)

solve = foldl (+) 0 [x | x <- fib [], mod x 2 == 0]
