#######################
### > MapsUploader < ###
#######################


envsubst:
	envsubst < env_maps.tmpl > .env_maps

include .env_maps

# The ./update_static_files.sh' update the static files for django, this script is located inside each repository
upload_maps:
	# include .env_maps
	rsync -e 'ssh -p ${PORT}' -azPv --delete --progress ${SRC_DIR} ${USERNAME}@${HOSTNAME}:${DEST_DIR}
	ssh -p ${PORT} ${USERNAME}@${HOSTNAME} 'cd ${REPOSITORY} && ./update_static_files.sh'
