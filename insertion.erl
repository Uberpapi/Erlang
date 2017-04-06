%%%-------------------------------------------------------------------
%%% @author Alex Lindström
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. apr 2017 15:58
%%%-------------------------------------------------------------------
-module(insertion).
-author("Alex Lindström").

%% API
-export([]).
-compile(export_all).

isort(L) ->
  isort(L, []).

isort([H|T], K) ->
  isort(T, insert(K, H));

isort([], K) ->
  K.

insert([], K) ->
  [K];X

insert(X = [H|T], K) ->
  if(K =< H) ->
    [K|X];
  true -> [H| insert(T,K)]
  end.


