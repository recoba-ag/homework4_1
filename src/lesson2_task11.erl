%%%-------------------------------------------------------------------
%%% @author recoba_ag
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 25. сер 2023 15:37
%%%-------------------------------------------------------------------
-module(lesson2_task11).
-author("recoba_ag").

%% API
-export([encode_modified/1]).

encode_modified(List) ->
  encode_modified(List,1).

encode_modified([], _) ->
  [];
encode_modified([H,H|T], Acc) ->
  encode_modified([H|T], Acc+1);
encode_modified([H|T],1) ->
  [H|encode_modified(T,1)];
encode_modified([H|T], Acc) ->
  [{H,Acc}| encode_modified(T, 1)].