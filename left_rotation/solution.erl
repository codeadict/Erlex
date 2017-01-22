%%%-------------------------------------------------------------------
%%% @author Dairon Medina C. <me@dairon.org>
%%% Created : 22. Jan 2016 6:15 PM
%%%-------------------------------------------------------------------
-module(solution).
-author("@codeadict").
-export([main/0]).

main()->
    {ok, [_N, _D]} = io:fread("", "~d~d"),
    {ok, _L} = io:fread("", string:copies("~d", _N)),
    Result = rotate_left(_L, _D),
    out_format(Result).

%% D: The number of rotations to apply.
%% L: The list.
rotate_left([], _) -> [];
rotate_left(L, 0) -> L;
rotate_left(L, D) when D>0 ->
    {Left, Right} = lists:split(D rem length(L), L),
    Right ++ Left.

%% Recursive function that formats result as an space separated list.
out_format([H|T]) ->
    io:format("~b ", [H]),
    out_format(T);
out_format([]) ->
    ok.