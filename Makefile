DOCKER_CHECKOV := docker run -t --rm -v $(shell pwd):/tf -w /tf bridgecrew/checkov:2.2.331
DOCKER_TERRADOCS := docker run --rm -v "$(shell pwd):/terraform-docs" -w /terraform-docs quay.io/terraform-docs/terraform-docs:0.16.0

.PHONY: lint
lint:
	@terraform fmt && terraform validate

.PHONY: test
test:
	@go test -v ./tests/...

.PHONY: docs
	@(DOCKER_TERRADOCS) markdown table --output-file README.md --output-mode inject ./modules/*
