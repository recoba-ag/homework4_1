%%%-------------------------------------------------------------------
%%% @author recoba_ag
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 25. сер 2023 15:39
%%%-------------------------------------------------------------------
-module(lesson2_task15).
-author("recoba_ag").

%% API
-export([replicate/2]).

replicate(List, N) ->
  replicate(List, N, N).

replicate([_|T], N, 0) ->
  replicate(T, N, N);
replicate([H|T], N, Acc) ->
  [H | replicate([H | T], N, Acc-1 )];
replicate([], _, _) ->
  [].