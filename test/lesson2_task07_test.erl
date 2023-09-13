-module(lesson2_task07_test).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

lesson2_task07_test_() -> [
  ?_assert(lesson2_task07:flatten([]) =:= []),
  ?_assert(lesson2_task07:flatten([1,[2,3],4,[[],5]]) =:= [1,2,3,4,5]),
  ?_assert(lesson2_task07:flatten([[],1,[2,[3,4]],5]) =:= [1,2,3,4,5])
].
-endif.
