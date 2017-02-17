-module(add_recursion).
-compile(export_all).


add(0, Y) -> Y;
add(X, Y) -> 
	io:format("~p+~p~n", [X, Y]),
	'+1'(add('-1'(X), Y)).

'-1'(X) -> 
	io:format("~p-1~n", [X]),
	X - 1.
'+1'(X) -> 
	io:format("~p+1~n", [X]),
	X + 1.

test_add() ->
	add(3, 4).