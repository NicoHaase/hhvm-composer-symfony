#!/bin/bash

composer self-update
composer update
chown -R $DOCKERUSER:$DOCKERUSER app/cache
chmod -R 777 app/cache/
