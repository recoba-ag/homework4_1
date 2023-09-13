-module(lesson2_task06_test).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

lesson2_task06_test_() -> [
  ?_assert(lesson2_task06:is_palindrome([]) =:= []),
  ?_assert(lesson2_task06:is_palindrome([1,2,3,2,1]) =:= true),
  ?_assert(lesson2_task06:is_palindrome([l,e,v,e,l]) =:= true),
  ?_assert(lesson2_task06:is_palindrome([1,2,3,4]) =:= false)
].
-endif.