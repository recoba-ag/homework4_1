-module(lesson2_task08_test).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

lesson2_task08_test_() -> [
  ?_assert(lesson2_task08:compress([]) =:= []),
  ?_assert(lesson2_task08:compress([a]) =:= [a]),
  ?_assert(lesson2_task08:compress([a,a,b,b,b,c]) =:= [a,b,c])
].
-endif.