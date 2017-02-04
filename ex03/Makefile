FILES = $(shell find . | grep .swift$$)
NAME = $(shell basename "$$PWD")

build: .build/debug/$(NAME)

run: build
	@if [ -e Sources/main.swift ] ; \
	then \
#		run executable
		.build/debug/$(NAME) ; \
	else \
#		run test
		swift test ; \
	fi;

.build/debug/$(NAME): $(FILES)
	swift build

clean:
	rm -rf .build
