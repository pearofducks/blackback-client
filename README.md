blackback
==========

blackback is a gorilla component, it sets up [Ansible](http://www.ansible.com) to run at a specified interval (via ansible-pull) for setup/maintenance tasks

setup
-----

fork this repo and change [this line](https://github.com/pearofducks/blackback-client/blob/master/com.gorilla.blackbackRunner.plist#L12) to a git repo of your choosing that has ansible content (a local.yml file is required)

installation
------------

if [the luggage](https://github.com/unixorn/luggage) is installed you can simply `make pkg`, then use the resulting package on the target machine(s)

components
----------

- */Library/LaunchDaemons/***com.gorilla.blackbackRunner.plist:** runs `blackbackRunner` on reboot, and every 10 hours - or on first wake after this. This is also loaded immediately after install via postinstall.
- */usr/local/gorilla/***blackbackRunner:** pulls the repo (specified as the first argument) and runs ansible using the local.yml file in the repo, it will test for connectivity (~50x with 10s sleep) before timing out
- */usr/local/gorilla/***blackbackInstall:** installs virtualenv via easy_install, then creates a virtualenv with ansible installed at /usr/local/gorilla/ansible
