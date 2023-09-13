%%%-------------------------------------------------------------------
%%% @author recoba_ag
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 25. сер 2023 15:37
%%%-------------------------------------------------------------------
-module(lesson2_task10).
-author("recoba_ag").

%% API
-export([encode/1]).

encode(List) ->
  encode(List, 1).

encode([],_) ->
  [];
encode([H,H|T], Acc) ->
  encode([H|T], Acc+1);
encode([H|T], Acc) ->
  [{H,Acc}|encode(T,1)].