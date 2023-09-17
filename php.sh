#!/bin/sh
docker exec php-cli-env php "$@"
return $?