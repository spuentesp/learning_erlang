-module(hello_world).
-export([say_hello/0]).

say_hello() ->
    io:format("Hello, world!~n").