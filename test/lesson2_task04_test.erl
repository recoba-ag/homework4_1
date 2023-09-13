-module(lesson2_task04_test).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

lesson2_task04_test_() -> [
  ?_assert(lesson2_task04:len([]) =:= 0),
  ?_assert(lesson2_task04:len([a]) =:= 1),
  ?_assert(lesson2_task04:len([1,2,3,4,5]) =:= 5)
].
-endif.