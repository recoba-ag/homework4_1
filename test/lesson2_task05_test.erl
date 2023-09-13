-module(lesson2_task05_test).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

lesson2_task05_test_() -> [
  ?_assert(lesson2_task05:reverse([]) =:= []),
  ?_assert(lesson2_task05:reverse([1]) =:= [1]),
  ?_assert(lesson2_task05:reverse([1,2,3,4,5]) =:= [5,4,3,2,1])
].
-endif.