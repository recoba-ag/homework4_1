-module(lesson2_task15_test).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

lesson2_task15_test_() -> [
  ?_assert(lesson2_task15:replicate([],1) =:= []),
  ?_assert(lesson2_task15:replicate([a],2) =:= [a,a]),
  ?_assert(lesson2_task15:replicate([a,b,c,1],2) =:= [a,a,b,b,c,c,1,1])
].
-endif.