DOCKER_TERRASCAN := docker run -t --rm -v $(shell pwd):/iac -w /iac tenable/terrascan:1.17.1

.PHONY: lint
lint:
	@terraform fmt && terraform validate && $(DOCKER_TERRASCAN) scan
