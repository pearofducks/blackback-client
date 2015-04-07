USE_PKGBUILD=1
include /usr/local/share/luggage/luggage.make

TITLE=blackback
PACKAGE_NAME=blackback
REVERSE_DOMAIN=com.gorilla
PAYLOAD=\
				pack-script\
				pack-Library-LaunchDaemons-com.gorilla.blackbackRunner.plist \
				pack-script-postinstall

pack-script:
	@sudo mkdir -p ${WORK_D}/usr/local/gorilla
	@sudo ${CP} blackbackInstall ${WORK_D}/usr/local/gorilla/blackbackInstall
	@sudo chmod 700 ${WORK_D}/usr/local/gorilla/blackbackInstall
	@sudo ${CP} blackbackRunner ${WORK_D}/usr/local/gorilla/blackbackRunner
	@sudo chmod 700 ${WORK_D}/usr/local/gorilla/blackbackRunner
