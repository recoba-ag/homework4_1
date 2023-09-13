%%%-------------------------------------------------------------------
%%% @author recoba_ag
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. сер 2023 23:23
%%%-------------------------------------------------------------------
-module(lesson2_task01).
-author("recoba_ag").

%% API
-export([last/1]).

last([]) ->
  [];
last([H|[]]) ->
  H;
last([_|T]) ->
  last(T).