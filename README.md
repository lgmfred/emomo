emomo
=====

![Build Status](https://github.com/lgmfred/emomo/actions/workflows/ci.yml/badge.svg)

[MTN Mobile Money API](https://momodeveloper.mtn.com/) client for Erlang

Usage
-----
To unlock its features, simply add it to your app's `.app` file or give it a lively start with:

```erlang
application:ensure_all_started(emomo).
```
Once awakened, you're free to unleash the API calls right away!

Build
-----
```shell
rebar3 compile
```

Tests
-----
```shell
rebar3 test
```

