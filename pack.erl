%%%-------------------------------------------------------------------
%%% @author Alex Lindström
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. apr 2017 11:17
%%%-------------------------------------------------------------------
-module(pack).
-author("Alex Lindström").

%% API
-export([]).
-compile(export_all).

pack(L) ->
  pack(L, []).

pack([H|T], K)->
  V = check(K, H),
  if (V == true) ->
    add([H|T], K, H, [H|T], []);
    true -> pack(T, K)
  end;

pack([], K)->
  clam(K).

check([H|T], K) ->
  if(H == K) ->
    false;
    true -> check(T, K)
  end;

check([], _) ->
  true.

add([H|T], K, L, G, M) ->
  if (H == L) ->
    add(T,K, L, G, M ++ [L]);
    true -> add(T, K, L, G, M)
  end;

add([],K, _, G, M) ->
  pack(G, K ++ M).

clam(L)->
  clam(L, [], []).

clam([H|T], K, M) ->
  V = next(T,H),
  if (V == true) ->
    clam(T, K ++ [H], M);
    true -> clam(T, [], M ++ [[H|K]])
  end;

clam([], _, M) ->
  io:format("~w~n", [M]).

next([H|_], K) ->
  if (H == K) ->
    true;
    true -> false
  end;

next([], _) ->
  false.


