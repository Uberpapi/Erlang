%%%-------------------------------------------------------------------
%%% @author Alex Lindström
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. apr 2017 16:45
%%%-------------------------------------------------------------------
-module(sort).
-author("Alex Lindström").

%% API
-export([]).
-compile(export_all).

% INSERTION SORT -----------------------------

isort(L) ->
  isort(L, []).

isort([H|T], K) ->
  isort(T, insert(K, H));

isort([], K) ->
  K.

insert([], K) ->
  [K];

insert(X = [H|T], K) ->
if(K =< H) ->
[K|X];
true -> [H| insert(T,K)]
end.

% --------------------------------------------
% MERGE SORT

msort([]) ->
[];

msort([H|[]]) ->
[H];

msort(L) ->
{H, V} = msplit(L, [], []),
merge(msort(H), msort(V)).

msplit([], L1, L2) ->
{L1, L2};

msplit([H|T], L1, L2) ->
msplit(T, [H|L2], L1).

merge([LH|LT], [L2H|L2T]) ->
  if (LH =< L2H) ->
    [LH|merge(LT, [L2H|L2T])];
    true -> [L2H|merge(L2T, [LH|LT])]
  end;

merge([L], []) ->
  L;

merge([], L) ->
  L.

%---------------------------------------------
% Quick Sort

qsort([]) ->
  [];

qsort([H|T]) ->
  {L1, L2} = qsplit(H, T, [], []),
  SmallSorted = qsort(L2),
  LargeSorted = qsort(L1),
  SmallSorted ++ [H] ++ LargeSorted.

qsplit(_, [], L1, L2) ->
  {L1, L2};

qsplit(Piv, [H|T], L1, L2) when H < Piv->
  qsplit(Piv, T, [H|L1], L2);

qsplit(Piv, [H|T], L1, L2) when H >= Piv ->
  qsplit(Piv, T, L1, [H|L2]).


% ---------------------------------------------
% Bubble Sort

bsort([]) ->
  [];

bsort([H|[]]) ->
  [H];

bsort([H|T]) ->
  bubble(H,T).

bubble(P, [H|T]) when P < H ->
  bsort([H|T]);

bubble(P, [H|T]) when P >= H ->
  bsort([P|T]).




