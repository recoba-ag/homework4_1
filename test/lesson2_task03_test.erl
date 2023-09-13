-module(lesson2_task03_test).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

lesson2_task03_test_() -> [
  ?_assert(lesson2_task03:element_at([], 1) =:= undefined),
  ?_assert(lesson2_task03:element_at([2,3,4], 0) =:= undefined),
  ?_assert(lesson2_task03:element_at([1,2,3], 4) =:= undefined),
  ?_assert(lesson2_task03:element_at([1,2,3], 3) =:= 3),
  ?_assert(lesson2_task03:element_at([1,2,[a,b],4,5,6,7], 3) =:= [a,b])
].
-endif.