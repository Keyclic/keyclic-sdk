SCRIPTS_DIRECTORY=scripts

.PHONY: generate
generate:
	$(SCRIPTS_DIRECTORY)/generate.sh

.PHONY: publish
publish:
	npm publish --access public
