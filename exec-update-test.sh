#!/bin/bash
docker-compose -f docker-compose-test.yml  run --rm ansible ansible-playbook -i playbook/ansible-host-test.yml playbook/playbook-update-test.yml
