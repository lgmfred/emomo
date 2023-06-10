%% @doc Behold the main module that implements the functions to
%% interact with MTN's MoMo API.
%% @end

-module(emomo).

-behaviour(application).

-export([start/0, start/2, stop/1]).
%% Credential
%screate_api_user/0,
%get_api_user/0,
%create_api_key/0,
%oauth/1
-export([]).

%%--------------------------------------------------------------------
%% Public API
%%--------------------------------------------------------------------

%% @hidden
-spec start() -> {ok, [atom()]}.
start() ->
    application:ensure_all_started(emomo).

%% Application Behaviour

%% @hidden
-spec start(application:start_type(), term()) ->
               {ok, pid()} | {ok, pid(), term()} | {error, term()}.
start(_StartType, _Arg) ->
    emomo_sup:start_link().

%% @hidden
-spec stop(term()) -> ok.
stop(_State) ->
    ok.
