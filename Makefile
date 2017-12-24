PHP ?= $(shell which php7.0)
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
	$(PHP) ./vendor/bin/atoum

.PHONY: code-sniffer
code-sniffer:
	$(PHP) vendor/bin/phpcs src -n --colors --ignore=Tests --error-severity=1 --standard=vendor/m6web/symfony2-coding-standard/Symfony2


