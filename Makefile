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
