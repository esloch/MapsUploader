

include .env_maps

MAKE = make -f Makefile


send_maps:
	./rsync_maps.sh

restart_server:
	ssh ${USERNAME}@${HOSTNAME} 'cd ${STAGING_DIR} && ./release_update.sh'


update_release:
	$(MAKE) send_maps
	$(MAKE) restart_server
