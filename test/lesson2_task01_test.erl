-module(lesson2_task01_test).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

lesson2_task01_test_() -> [
  ?_assert(lesson2_task01:last([]) =:= []),
  ?_assert(lesson2_task01:last([1]) =:= 1),
  ?_assert(lesson2_task01:last([1, 2]) =:= 2)
].
-endif.