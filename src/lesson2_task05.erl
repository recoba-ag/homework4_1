%%%-------------------------------------------------------------------
%%% @author recoba_ag
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. сер 2023 00:22
%%%-------------------------------------------------------------------
-module(lesson2_task05).
-author("recoba_ag").

%% API
-export([reverse/1]).

reverse([]) ->
  [];
reverse(List) ->
  reverse(List, []).

reverse([H|[]], Acc) ->
  [H|Acc];
reverse([H|T], Acc) ->
  reverse(T,[H|Acc]).