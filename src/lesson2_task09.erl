%%%-------------------------------------------------------------------
%%% @author recoba_ag
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 25. сер 2023 15:33
%%%-------------------------------------------------------------------
-module(lesson2_task09).
-author("recoba_ag").

%% API
-export([pack/1]).

pack(List) ->
  pack(List,[]).

pack([],_) ->
  [];
pack([H,H | T],L) ->
  pack([H|T], [H|L]);
pack([H | T],L) ->
  [[H | L] | pack(T,[])].