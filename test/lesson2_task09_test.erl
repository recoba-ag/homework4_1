-module(lesson2_task09_test).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

lesson2_task09_test_() -> [
  ?_assert(lesson2_task09:pack([]) =:= []),
  ?_assert(lesson2_task09:pack([a]) =:= [[a]]),
  ?_assert(lesson2_task09:pack([a,b,b]) =:= [[a],[b,b]]),
  ?_assert(lesson2_task09:pack([a,a,b,c,c,c,e,e]) =:= [[a,a],[b],[c,c,c],[e,e]])
].
-endif.