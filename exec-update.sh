#!/bin/bash
sudo apt update && sudo apt upgrade -y
docker-compose run --rm ansible ansible-playbook -i playbook/ansible-host.yml playbook/playbook-update.yml -K
