%%%-------------------------------------------------------------------
%%% @author recoba_ag
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. сер 2023 23:48
%%%-------------------------------------------------------------------
-module(lesson2_task02).
-author("recoba_ag").

%% API
-export([but_last/1]).

but_last([]) ->
  [];
but_last([H|[]]) ->
  [H];
but_last([H1|[H2|[]]]) ->
  [H1, H2];
but_last([_|T]) ->
  but_last(T).