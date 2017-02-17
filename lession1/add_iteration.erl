-module(add_iteration).
-compile(export_all).


add(0, Y) -> Y;
add(X, Y) -> 
	io:format("~p+~p~n", [X, Y]),
	add('-1'(X), '+1'(Y)).

'-1'(X) -> X - 1.
'+1'(X) -> X + 1.

test_add() ->
	add(3, 4).