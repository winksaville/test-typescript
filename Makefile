greeter.js: greeter.ts Makefile tsconfig.json
	tsc

.PHONY: clean
clean:
	rm greeter.js

