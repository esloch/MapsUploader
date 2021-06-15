#!/usr/bin/env bash
. .env_maps


echo "Inicializado a sincronização..."

rsync -azPv --progress ${FROM_DIR} ${USERNAME}@${HOSTNAME}:${BASE_DIR}
