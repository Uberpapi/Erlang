%%%-------------------------------------------------------------------
%%% @author Alex Lindström
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 04. apr 2017 15:47
%%%-------------------------------------------------------------------
-module(nth).
-author("Alex Lindström").

%% API
-export([]).
-compile (export_all).

nth(N, [Head|Tail]) ->
  if (Head == N) ->
    Head;
    true -> nth(N, Tail)
  end.


