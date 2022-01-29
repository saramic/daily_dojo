.DEFAULT_GOAL := usage

# user and repo
USER        = $$(whoami)
CURRENT_DIR = $(notdir $(shell pwd))

# terminal colours
RED     = \033[0;31m
GREEN   = \033[0;32m
YELLOW  = \033[0;33m
NC      = \033[0m

.PHONY: rubocop
rubocop:
	bundle exec rubocop

.PHONY: rubocop-fix
rubocop-fix:
	bundle exec rubocop -A

.PHONY: test
test:
	bundle exec rspec

.PHONY: test-watch
test-watch:
	bundle exec guard

.PHONY: build
build: rubocop test

.PHONY: demo
demo:
	./bin/meta_math_demo.rb 'one'
	# ./bin/meta_math_demo.rb 'one plus one'
	# ./bin/meta_math_demo.rb 'three times four'
	# ./bin/meta_math_demo.rb 'nine diveded by three'
	# ./bin/meta_math_demo.rb 'five minus two'

.PHONY: usage
usage:
	@echo
	@echo "Hi ${GREEN}${USER}!${NC} Welcome to ${RED}${CURRENT_DIR}${NC}"
	@echo
	@echo "Development"
	@echo
	@echo "${YELLOW}make rubocop${NC}       run rubocop"
	@echo "${YELLOW}make rubocop-fix${NC}   apply rubocop -A fixes"
	@echo "${YELLOW}make test${NC}          run rspec tests"
	@echo "${YELLOW}make test-watch${NC}    run rspec tests using guard"
	@echo "${YELLOW}make build${NC}         build command checking rubocop and tests"
	@echo
	@echo "Demo"
	@echo
	@echo "${YELLOW}make demo${NC}          run some demos"
	@echo
