-module(lession1).
-compile(export_all).

%% 
my_try(Guess, X) ->
	case good_enough(Guess, X) of
		true ->
			Guess;
		false ->
			my_try(improve(Guess, X), X)
	end.

sqrt(X) ->
	my_try(1, X).

improve(Guess, X) ->
	average(Guess, X/Guess).

good_enough(Guess, X) ->
	abs(square(Guess) - X) < 0.001.

square(X) -> X * X.

average(X, Y) -> (X + Y) / 2.

