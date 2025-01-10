-module(list_utils).
-export([classify_numbers/1, process_numbers/2, conditional_sum/2]).
-import(math_utils, [is_prime/1,filter_even/1,filter_odd/1,filter_prime/1]).

classify_numbers(Numbers) ->
	EvenList = filter_even(Numbers),
    OddList = filter_odd(Numbers),
    PrimeList = filter_prime(Numbers),
    {EvenList, OddList, PrimeList}.

process_numbers([],_) -> [];
process_numbers([Head | Tail], double) ->
	[Head * 2 | process_numbers(Tail, double)];
process_numbers([Head | Tail], square) ->
    [Head * Head | process_numbers(Tail, square)];
process_numbers([Head | Tail], halve) ->
    [Head div 2 | process_numbers(Tail, halve)].

conditional_sum([Head | Tail], Condition) ->
    case Condition of
        prime -> lists:sum(filter_prime([Head | Tail]));
        even -> lists:sum(filter_even([Head | Tail]));
        odd -> lists:sum(filter_odd([Head | Tail]))
    end.


