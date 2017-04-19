install:
	bin/rebar3 get-deps
compile:
	bin/rebar3 compile

relx-generate:
	bin/rebar3 update
	bin/rebar3 as escript escriptize
	cp -f _build/default/bin/relx bin/relx

start:
	_build/default/rel/myapp/bin/myapp foreground
