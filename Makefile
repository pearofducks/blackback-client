USE_PKGBUILD=1
include /usr/local/share/luggage/luggage.make

TITLE=anatra
PACKAGE_NAME=anatra
REVERSE_DOMAIN=com.chordata
PAYLOAD=\
				pack-script\
				pack-Library-LaunchDaemons-com.chordata.anatra.plist \
				pack-script-postinstall

pack-script:
	@sudo mkdir -p ${WORK_D}/etc/ansible/facts.d
	@sudo ${CP} mac.fact ${WORK_D}/etc/ansible/facts.d/mac.fact
	@sudo mkdir -p ${WORK_D}/usr/local/chordata
	@sudo ${CP} anatraSetup ${WORK_D}/usr/local/chordata/anatraSetup
	@sudo chmod 700 ${WORK_D}/usr/local/chordata/anatraSetup
	@sudo ${CP} anatraRun ${WORK_D}/usr/local/chordata/anatraRun
	@sudo chmod 700 ${WORK_D}/usr/local/chordata/anatraRun
