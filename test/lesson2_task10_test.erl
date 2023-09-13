-module(lesson2_task10_test).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

lesson2_task10_test_() -> [
  ?_assert(lesson2_task10:encode([]) =:= []),
  ?_assert(lesson2_task10:encode([a]) =:= [{a,1}]),
  ?_assert(lesson2_task10:encode([a,a,b,c,c,c,1,1,1]) =:= [{a,2}, {b,1}, {c,3},{1,3}])
].
-endif.