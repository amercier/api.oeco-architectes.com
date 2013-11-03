

SRC = vendor/vmware/vcloud-sdk/library/
OUT = library/
PATCH = scripts/patches/*.patch

all: install
	#

install: vendor
	# Installed successfully

vendor: composer.phar
	[ -s composer.lock ] && php composer.phar update || php composer.phar install

composer.phar:
	curl -sS https://getcomposer.org/installer | php

server:
	php -S 0:8080 -t public/ public/index.php
