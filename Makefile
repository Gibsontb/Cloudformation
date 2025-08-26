SHELL := /bin/bash

.PHONY: lint cfn-lint guard validate-all
lint:
	yamllint -c .yamllint .

cfn-lint:
	cfn-lint -c .cfnlintrc -i W3002,W2001 $(shell git ls-files 'cfn/**/*.yaml')

guard:
	for t in $(shell git ls-files 'cfn/**/*.yaml'); do echo "Guard: $$t"; cfn-guard validate -r guard/ -d "$$t" || exit 1; done

validate-all:
	./scripts/validate-all.sh
