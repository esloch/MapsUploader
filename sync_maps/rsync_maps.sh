#!/bin/bash
. .env_maps


echo "Sync initialized..."

rsync -azPv --progress ${FROM_DIR} ${USERNAME}@${HOSTNAME}:${BASE_DIR}
