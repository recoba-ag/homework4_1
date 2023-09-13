%%%-------------------------------------------------------------------
%%% @author recoba_ag
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. сер 2023 02:07
%%%-------------------------------------------------------------------
-module(lesson2_task06).
-author("recoba_ag").

%% API
-export([is_palindrome/1]).

is_palindrome([]) ->
  [];
is_palindrome(List) ->
  is_palindrome(List, [], List).

is_palindrome([], Acc, Acc) ->
  true;
is_palindrome([Elem | Rest], Acc, RestAcc) ->
  is_palindrome(Rest, [Elem | Acc], RestAcc);
is_palindrome(_, _, _) ->
  false.
