%%%-------------------------------------------------------------------
%%% @author recoba_ag
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. сер 2023 23:54
%%%-------------------------------------------------------------------
-module(lesson2_task03).
-author("recoba_ag").

%% API
-export([element_at/2]).

element_at([],_) ->
  undefined;
element_at(_,0) ->
  undefined;
element_at([H|_],1) ->
  H;
element_at([_|T],N) ->
  element_at(T, N-1).