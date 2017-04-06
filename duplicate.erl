%%%-------------------------------------------------------------------
%%% @author Alex Lindström
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 04. apr 2017 16:20
%%%-------------------------------------------------------------------
-module(duplicate).
-author("Alex Lindström").

%% API
-export([]).
-compile(export_all).

duplicate(L) ->
  duplicate(L, []).

duplicate([Head|Tail], K) ->
  V = [Head, Head],
  duplicate(Tail, K ++ V);

duplicate(_, K) ->
  K.