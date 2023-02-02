.PHONY: lint
lint:
	@terraform fmt && terraform validate
