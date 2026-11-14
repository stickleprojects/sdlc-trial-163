# A throwaway consumer for trialling SDLC_CHECK_AFTER_REVIEW (claude-sdlc#163).
# The stack is a no-op, except that `make test` sleeps, so a push can land while `check` runs.

.PHONY: setup fmt lint test validate check

include .sdlc/sdlc.mk

TRIAL_SLEEP ?= 120

setup fmt lint:
	@true

test:
	@echo "trial: sleeping $(TRIAL_SLEEP)s to stand in for a slow test suite"
	@sleep $(TRIAL_SLEEP)

validate:
	@$(SDLC) check

check: lint test validate exec-bits
