#!/bin/bash

echo '>>> Starting update <<<'

source /opt/miniconda3/bin/activate
docker-compose -p dev -f docker/staging-compose.yml --env-file .env_staging down -v --remove-orphans
docker-compose -p dev -f docker/staging-compose.yml --env-file .env_staging up -d

echo '>>> Update completed! <<<'
