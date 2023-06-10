%% @hidden

-module(emomo_sup).

-behaviour(supervisor).

-export([start_link/0]).
-export([init/1]).

-spec start_link() -> {ok, pid()} | {error, term()}.
start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, noargs).

-spec init(noargs) -> {ok, {{one_for_one, 5, 10}, [supervisor:child_spec()]}}.
init(noargs) ->
    SupFlags = {one_for_one, 5, 10},
    ChildSpecs = [],
    {ok, {SupFlags, ChildSpecs}}.
