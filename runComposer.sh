#!/bin/bash

touch /tmp/.hhvm.hhbc
composer.phar self-update
composer.phar update