default: bin/hello

bin/hello: hello_tb.d
	ldc2 -L-luvm-ldc-shared -L-lesdl-ldc-shared -link-defaultlib-shared $^ -of $@