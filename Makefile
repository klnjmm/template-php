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

.PHONY: unit-tests-loop
unit-tests-loop:
        $(PHP) ./vendor/bin/atoum -l

.PHONY: code-sniffer
code-sniffer:
	$(PHP) vendor/bin/phpcs src -n --colors --error-severity=1 --standard=PSR2


