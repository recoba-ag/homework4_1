-module(lesson2_task12_test).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

lesson2_task12_test_() -> [
  ?_assert(lesson2_task12:decode_modified([]) =:= []),
  ?_assert(lesson2_task12:decode_modified([a]) =:= [a]),
  ?_assert(lesson2_task12:decode_modified([{2,b}]) =:= [b,b]),
  ?_assert(lesson2_task12:decode_modified([{3,a},b,{2,c}]) =:= [a,a,a,b,c,c])
].
-endif.