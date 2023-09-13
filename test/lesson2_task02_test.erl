-module(lesson2_task02_test).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

lesson2_task02_test_() -> [
  ?_assert(lesson2_task02:but_last([]) =:= []),
  ?_assert(lesson2_task02:but_last([1]) =:= [1]),
  ?_assert(lesson2_task02:but_last([1, 2]) =:= [1, 2]),
  ?_assert(lesson2_task02:but_last([1, 2, 3]) =:= [2, 3]),
  ?_assert(lesson2_task02:but_last([1, 2, 3, aa]) =:= [3, aa])
].
-endif.