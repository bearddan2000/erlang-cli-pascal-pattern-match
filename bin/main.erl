% pascal triangle program
-module(main).
-export([row/3,col/2,start/0]).

row(K, I, D) when K > I -> 0;
row(K, I, D) ->
  io:fwrite("~w, ", [trunc(D)]),
  A = I-K,
  B = K+1,
  C = D * (A / B),
  row(B, I, C).

col(0, N) ->
  io:fwrite("1~n"),
  col(1, N);
col(I, N) when I > N -> 0;
col(I, N) ->
  row(0, I, 1),
  io:fwrite("~n"),
  col(I+1, N).

start() ->
  N = 10,
  io:fwrite("[INPUT] ~w~n", [N]),
  io:fwrite("[OUTPUT] ~n"),
  col(0, N).
