TSC_FLAGS += --noUnusedLocals --noUnusedParameters --noIMplicitAny
TSC_FLAGS += --noImplicitReturns --NoImplicitThis --noEmitOnError
TSC_FLAGS += --alwaysStrict
#TSC_FLAGS += --allowJs # --allowJs is not allowed if --declaration is also set
TSC_FLAGS += --declaration
TSC_FLAGS += --experimentalDecorators
TSC_FLAGS += --forceConsistentCasingInFileNames
TSC_FLAGS += --strictNullChecks

greeter.js: greeter.ts Makefile
	tsc $(TSC_FLAGS) $< --outFile $@

.PHONY: clean
clean:
	rm greeter.js

