# The shell we use
SHELL := /bin/bash

# We like colors
# From: https://coderwall.com/p/izxssa/colored-makefile-for-golang-projects
RED=`tput setaf 1`
GREEN=`tput setaf 2`
RESET=`tput sgr0`
YELLOW=`tput setaf 3`

# Name
NAME = testthedocs/ablog
# Get version form VERSION
VERSION := $(shell cat VERSION)
DOCKER := $(bash docker)

# Add the following 'help' target to your Makefile
# And add help text after each target name starting with '\#\#'
.PHONY: help
help: ## This help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: html
html: ## Builds HTML version
	@docker run --rm -it -v $(pwd)/content:/srv/data testthedocs/ablog build

.PHONY: build
build: ## Builds docker image
	docker build --no-cache=true -t $(NAME):$(VERSION) --rm -f dockerfiles/Dockerfile .

.PHONY: push
push: ## Pushes images
	docker push $(NAME):$(VERSION)
	docker push $(NAME):latest

.PHONY: tag_latest
tag_latest: ## Tag image with version and latest tag
	docker tag $(NAME):$(VERSION) $(NAME):latest

.PHONY: last_built_date
last_built_date: ## Show last build date
	docker inspect -f '{{ .Created }}' $(NAME):$(VERSION)

.PHONY: release
release: check_release_version build tag_latest push ## Combine steps to make release

.PHONY: check_release_version
check_release_version:
	@if docker images $(NAME) | awk '{ print $$2 }' | grep -q -F $(VERSION); then echo "$(RED)$(NAME) version $(VERSION) is already build !$(RESET)"; false; fi
