%%%-------------------------------------------------------------------
%%% @author recoba_ag
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 25. сер 2023 15:38
%%%-------------------------------------------------------------------
-module(lesson2_task14).
-author("recoba_ag").

%% API
-export([duplicate/1]).

duplicate([]) ->
  [];
duplicate([H|T]) ->
  [H,H | duplicate(T)].