%%%-------------------------------------------------------------------
%%% @author recoba_ag
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 25. сер 2023 12:25
%%%-------------------------------------------------------------------
-module(lesson2_task08).
-author("recoba_ag").

%% API
-export([compress/1]).

compress([]) ->
  [];
compress([H | []]) ->
  [H];
compress([H, H | T]) ->
  compress([H | T]);
compress([H | T]) ->
  [H | compress(T)].