#!/bin/bash

composer.phar self-update
composer.phar update
chown -R $DOCKERUSER:$DOCKERUSER app vendor bin public/bundles composer.lock
chmod -R g+w app/ vendor/ bin/ public/bundles/ composer.lock

chown -R $DOCKERUSER:$DOCKERUSER /root/.composer/