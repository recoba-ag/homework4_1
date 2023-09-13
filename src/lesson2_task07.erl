%%%-------------------------------------------------------------------
%%% @author recoba_ag
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. сер 2023 15:02
%%%-------------------------------------------------------------------
-module(lesson2_task07).
-author("recoba_ag").

%% API
-export([flatten/1]).

flatten([]) ->
  [];
flatten([[H|T]|T2]) ->
  flatten([H,T|T2]);
flatten([[]|T]) ->
  flatten(T);
flatten([H|T]) ->
  [H|flatten(T)].
