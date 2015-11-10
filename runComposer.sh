#!/bin/bash

composer.phar self-update
composer.phar update
chown -R $DOCKERUSER:$DOCKERUSER app vendor bin public/bundles composer.lock
chmod -R 777 app/ vendor/ bin/ public/bundles/ composer.lock

