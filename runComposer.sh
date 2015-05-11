#!/bin/bash

composer self-update
composer install
chown -R $DOCKERUSER:$DOCKERUSER app/cache
