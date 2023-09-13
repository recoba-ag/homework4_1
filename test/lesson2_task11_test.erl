-module(lesson2_task11_test).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

lesson2_task11_test_() -> [
  ?_assert(lesson2_task11:encode_modified([]) =:= []),
  ?_assert(lesson2_task11:encode_modified([a]) =:= [a]),
  ?_assert(lesson2_task11:encode_modified([a,b,b,c,c,c,2,2,2]) =:= [a, {b,2}, {c,3}, {2,3}])
].
-endif.