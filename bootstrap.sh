#!/usr/bin/env bash

if ! dpkg -s ansible > /dev/null 2>&1; then
	echo -e "Ansible not installed. Install? (y/n) \c"
	read REPLY
	if [[ $REPLY == "y" ]]; then
		sudo apt-get -y install ansible
	else
		exit
	fi
fi

ansible-playbook --inventory-file=hosts playbook.yaml
