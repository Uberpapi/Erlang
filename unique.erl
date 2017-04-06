%%%-------------------------------------------------------------------
%%% @author Alex Lindström
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 04. apr 2017 16:36
%%%-------------------------------------------------------------------
-module(unique).
-author("Alex Lindström").

%% API
-export([]).
-compile(export_all).

unique(L) ->
  unique(L, []).

unique([H|T], K) ->
  V = check(K, H),
  if(V == true) ->
    unique(T, K);
    true -> unique(T,K ++ [H])
  end;

unique([], K) ->
  K.

check([H|T], K) ->
  if(K == H) ->
    true;
    true -> check(T, K)
  end;

check([], _) ->
  false.