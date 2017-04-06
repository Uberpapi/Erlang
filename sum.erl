%%%-------------------------------------------------------------------
%%% @author Alex Lindström
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 04. apr 2017 16:10
%%%-------------------------------------------------------------------
-module(sum).
-author("Alex Lindström").

%% API
-export([]).
-compile(export_all).

sum(L) ->
  sum(L, 0).

sum([Head|Tail], K) ->
  sum(Tail, K + Head);

sum(_, K) ->
  K.
