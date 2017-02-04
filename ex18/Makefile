FILES = $(shell find . | grep .swift$$)
NAME = $(shell basename "$$PWD")

build: .build/debug/$(NAME)

run: build
	@if [ -e Sources/main.swift ] ; \
	then \
		.build/debug/$(NAME) ; \
	else \
		swift test ; \
	fi;

init:
	swift package init
	rm .gitignore

.build/debug/$(NAME): $(FILES)
	swift build

clean:
	rm -rf .build
