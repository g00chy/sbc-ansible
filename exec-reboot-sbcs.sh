#!/bin/bash
docker-compose run --rm ansible ansible-playbook -i playbook/ansible-host.yml playbook/playbook-reboot-sbc.yml
