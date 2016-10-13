%%%-------------------------------------------------------------------
%%% @author Dairon Medina C. <me@dairon.org>
%%% Created : 13. Oct 2016 4:49 PM
%%%-------------------------------------------------------------------
-module(kangaroo).
-author("@codeadict").

-export([main/0]).

main() ->
  {ok, [X1, V1, X2, V2]} = io:fread("", "~d~d~d~d"),
  solve(X1, V1, X2, V2).


solve(X1, V1, X2, V2) when (V1 /= V2) and ((X1 - X2) rem (V2 - V1) == 0) and ((X1 - X2) div (V2 - V1) > 0) ->
  io:fwrite("YES");
solve(_, _, _, _) ->
  io:fwrite("NO").