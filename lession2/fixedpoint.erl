-module(fixedpoint).
-compile(export_all).

-define(TOLERANCE, 0.00001).

sqrt(X) ->
	fixed_points(fun (Y) -> (Y + X/Y) / 2 end, 1).

fixed_points_iter(Fun, Old, New) ->
	case close_enough(Old, New) of
		true -> New;
		false -> 
			fixed_points_iter(Fun, New, Fun(New))
	end.

fixed_points(Fun, Guess) ->
	fixed_points_iter(Fun, Guess, Fun(Guess)).

close_enough(Old, New) ->
	abs(New - Old) < ?TOLERANCE.


