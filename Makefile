COMPOSER ?= $(shell which composer)

.PHONY: init
init:
	$(RM) -r .git

.PHONY: up
up: install-vendor

.PHONY: install-vendor
install-vendor: 
	$(PHP) $(COMPOSER) install

.PHONY: clean
clean: clean-vendor clean-composerlock

.PHONY: clean-vendor
clean-vendor:
	$(RM) -r ./vendor

.PHONY: clean-composerlock
clean-composerlock:
	$(RM) composer.lock
    
.PHONY: unit-tests
unit-tests:
	./vendor/bin/pest

.PHONY: code-sniffer
code-sniffer:
	./vendor/bin/phpcs


