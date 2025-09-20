install:
	composer install

.PHONY:
	install

brain-games:
	php bin/brain-games.php

proj_BG:
	cd ~/BrainGames/

validate:
	composer validate

lint:
	composer exec --verbose phpcs -- --standard=PSR12 src bin


console:
	composer exec --verbose psysh

lint:
	composer exec --verbose phpcs -- src tests
	composer exec --verbose phpstan

lint-fix:
	composer exec --verbose phpcbf -- src tests

test:
	composer exec --verbose phpunit tests

test-coverage:
	XDEBUG_MODE=coverage composer exec --verbose phpunit tests -- --coverage-clover=build/logs/clover.xml

test-coverage-text:
	XDEBUG_MODE=coverage composer exec --verbose phpunit tests -- --coverage-text
