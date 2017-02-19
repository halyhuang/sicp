-module(hanoti).
-compile(export_all).

move(1, From, Dest, _Temp) ->
	io:format("move 1 from ~p to ~p~n", [From, Dest]);
move(N, From, Dest, Temp) ->
	move(N - 1, From, Temp, Dest),
	io:format("move ~p from ~p to ~p~n", [N, From, Temp]),
	move(N - 1, Temp, Dest, From).

test() ->
	move(1, a, b, c).