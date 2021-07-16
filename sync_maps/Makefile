#######################
### > upload maps < ###
#######################

include .env_maps


send_maps_staging:
	rsync -azPv --delete --progress ${FROM_DIR} ${USERNAME}@${HOSTNAME}:${STAGING_DATA}
	ssh ${USERNAME}@${HOSTNAME} 'cd ${STAGING_REPO} && ./update_static_files.sh'


send_maps_production:
	rsync -azPv --delete --progress ${FROM_DIR} ${USERNAME}@${HOSTNAME}:${INFODENGUE_DATA}
	ssh ${USERNAME}@${HOSTNAME} 'cd ${INFODENGUE_REPO} && ./update_static_files.sh'
