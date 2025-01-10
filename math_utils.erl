-module(math_utils).
-export([sum/1, product/1, average/1,factorial/1,fibonacci/1,combinatorial/2,filter_even/1,filter_odd/1,filter_prime/1,is_prime/1]).

sum(List) ->
	lists:sum(List).

product(List) ->
	lists:foldl(fun(X, Acc) -> X * Acc end, 1, List).

average(List) ->
	sum(List) / length(List).

factorial(0) -> 1;
factorial(N) when N > 0 -> N * factorial(N - 1).

fibonacci(0) -> 0;
fibonacci(1) -> 1;
fibonacci(N) when N > 1 -> fibonacci(N - 1) + fibonacci(N - 2).

combinatorial(0, _) -> 1;
combinatorial(N, K) when N > 0, K > 0, N >= K -> factorial(N) div (factorial(K) * factorial(N - K)).

filter_even(List) ->
    lists:filter(fun(X) -> X rem 2 == 0 end, List).

filter_odd(List) ->
    lists:filter(fun(X) -> X rem 2 == 1 end, List).

filter_prime(List) ->
    lists:filter(fun(X) -> is_prime(X) end, List).


is_prime(2) -> true;
is_prime(3) -> true;
is_prime(N) when N < 2 -> false;
is_prime(N) when N > 3 -> not lists:any(fun(X) -> N rem X == 0 end, lists:seq(2, trunc(math:sqrt(N)))).
