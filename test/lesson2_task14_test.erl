-module(lesson2_task14_test).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

lesson2_task14_test_() -> [
  ?_assert(lesson2_task14:duplicate([]) =:= []),
  ?_assert(lesson2_task14:duplicate([a]) =:= [a,a]),
  ?_assert(lesson2_task14:duplicate([a,b,1,2]) =:= [a,a,b,b,1,1,2,2])
].
-endif.