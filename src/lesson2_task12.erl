%%%-------------------------------------------------------------------
%%% @author recoba_ag
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 25. сер 2023 15:38
%%%-------------------------------------------------------------------
-module(lesson2_task12).
-author("recoba_ag").

%% API
-export([decode_modified/1]).

decode_modified(List) ->
  decode_modified(List, 1).

decode_modified([],_) ->
  [];
decode_modified([{Acc,H}|T], 1) ->
  decode_modified([H|T], Acc);
decode_modified([H|T], 1) ->
  [H|decode_modified(T,1)];
decode_modified([H|T], Acc) ->
  [H|decode_modified([H|T], Acc-1)].