%%%-------------------------------------------------------------------
%%% @author Dairon Medina C. <me@dairon.org>
%%% Created : 12. Oct 2016 4:11 PM
%%%-------------------------------------------------------------------
-module(triangle).
-author("@codeadict").

%% API
-export([type/3]).


type(A, B, C) when (A =< 0) or (B =< 0) or (C =< 0) ->
  {error, invalid_side_length};
type(A, B, C) when not ((A < (B + C)) and (B < (A + C)) and (C < (A + B))) ->
  {error, violates_triangle_inequality};
type(A, A, A) -> equilateral;
type(A, _, A) -> isosceles;
type(A, A, _) -> isosceles;
type(_, B, B) -> isosceles;
type(_, _, _) -> scalene.