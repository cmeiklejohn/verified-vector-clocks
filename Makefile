all: compile

compile:
	erlc +debug_info -pa ebin -o ebin src/*.core src/*.erl

test: compile
	erl -pa ebin -noshell -s test test -s init stop
