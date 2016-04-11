#!/bin/bash

touch /tmp/.hhvm.hhbc
composer.phar self-update
composer.phar update
chmod -R g+w app/cache/*
chown -R :www-data app/cache/*