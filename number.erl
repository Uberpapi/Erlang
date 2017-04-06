%%%-------------------------------------------------------------------
%%% @author Alex Lindström
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 04. apr 2017 15:59
%%%-------------------------------------------------------------------
-module(number).
-author("Alex Lindström").

%% API
-export([]).
-compile(export_all).

number(L) ->
  number(L, 0).

number([_|L], N) ->
  number(L, N+1);

number(_, N) ->
  N.


