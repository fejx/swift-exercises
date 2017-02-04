DIRS = $(shell ls -d */)

.PHONY: clean
clean:
	@for dir in $(DIRS); do \
		cd $$dir && $(MAKE) clean && cd .. ; \
	done
