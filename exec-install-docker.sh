#!/bin/bash
docker-compose run --rm ansible ansible-playbook -i playbook/ansible-host.yml playbook/playbook-docker.yml
