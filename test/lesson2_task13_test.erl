-module(lesson2_task13_test).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

lesson2_task13_test_() -> [
  ?_assert(lesson2_task13:decode([]) =:= []),
  ?_assert(lesson2_task13:decode([{1,a}]) =:= [a]),
  ?_assert(lesson2_task13:decode([{1,a},{2,b},{3,c}]) =:= [a,b,b,c,c,c])
].
-endif.