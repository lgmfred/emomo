-module(emomo_SUITE).

-behaviour(ct_suite).

-export([all/0, init_per_suite/1, end_per_suite/1]).

-export_type([config/0]).

-define(EXCLUDED_FUNS, [module_info, all, test, init_per_suite, end_per_suite]).

-type config() :: [{atom(), term()}].

%%-----------------------------------------------------------------
%% Common test
%%-----------------------------------------------------------------
-spec all() -> [atom()].
all() ->
    Exports = ?MODULE:module_info(exports),
    [F || {F, _} <- Exports, not lists:member(F, ?EXCLUDED_FUNS)].

-spec init_per_suite(config()) -> config().
init_per_suite(Config) ->
    {ok, _} = emomo:start(),
    Config.

-spec end_per_suite(config()) -> config().
end_per_suite(Config) ->
    ok = application:stop(emomo),
    Config.

%%-----------------------------------------------------------------
%% Test cases
%%-----------------------------------------------------------------
