-module(sum_int).
-compile(export_all).

sum(To, To) -> To;
sum(From, To) ->
	From + sum(From + 1, To).	

sum_iter(From, From, Acc) -> Acc + From;
sum_iter(From, To, Acc) ->
	sum_iter(From, To-1, Acc + To).

sum_iter(From, To) ->
	sum_iter(From, To, 0).

sum_power(From, From, Acc) -> Acc + From * From;
sum_power(From, To, Acc) ->
	sum_power(From, To - 1, Acc + To * To).

sum_power(From, To) ->
	sum_power(From, To, 0).

iter(From, From, F, Acc) -> Acc + F(From);
iter(From, To, F, Acc) -> 
	iter(From, To-1, F, Acc + F(To)).

iter(From, To, F) ->
	iter(From, To, F, 0).

new_sum(From, To) ->
	iter(From, To, fun(X) -> X end).

new_power(From, To) ->
	iter(From, To, fun(X) -> X * X end).

