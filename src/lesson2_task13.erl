%%%-------------------------------------------------------------------
%%% @author recoba_ag
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 25. сер 2023 15:39
%%%-------------------------------------------------------------------
-module(lesson2_task13).
-author("recoba_ag").

%% API
-export([decode/1]).

decode([]) ->
  [];
decode([{0,_}|T]) ->
  decode(T);
decode([{Acc, H}|T]) ->
  [H|decode([{Acc-1, H}|T])].