blackback
==========

blackback is a gorilla component, it sets up ansible to run at a specified interval for future maintenance tasks

installation
------------

if *luggage* is installed you can simply `make pkg` and the required components will be set up.

components
----------

- **blackbackInstall:** installs virtualenv, then creates a virtualenv with ansible installed at /usr/local/gorilla/ansible
- **com.gorilla.blackbackRunner.plist:** runs `blackbackRunner` on every reboot, and every 10 hours - or on first wake after this
- **blackbackRunner:** pulls the repo (specified as the first argument) and runs ansible using the local.yml file in the repo, it will test for connectivity (10x with 10s sleep) before timing out
