FILES = $(shell find . | grep .swift$$)
NAME = $(shell basename "$$PWD")

run: build
	@echo $(NAME) is code only

build:
	swiftc $(FILES) -o $(NAME)

clean:
