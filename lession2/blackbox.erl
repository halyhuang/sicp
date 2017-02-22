-module(blackbox).
-compile(export_all).

sum(_Term, A, _Next, B) when A > B -> 0;
sum(Term, A, Next, B) ->
	Term(A) + sum(Term, Next(A), Next, B).

int(A) -> A.
next_int(A) -> A + 1.

sum_int(A, B) ->
	sum(fun(X) -> X end, A, fun(X) -> X + 1 end, B).


sum_iter(_Term, A, _Next, B, _Acc) -> when A > B -> 0;
sum_iter(Term, A, Next, B, Acc) ->
	sum_iter(Term, Next(A), Next, B, Acc + Term(A)).


