DOCKER_CHECKOV := docker run -t --rm -v $(shell pwd):/tf -w /tf bridgecrew/checkov:2.2.331

.PHONY: lint
lint:
	@terraform fmt && terraform validate

.PHONY: test
test:
	@go test -v ./tests/...
