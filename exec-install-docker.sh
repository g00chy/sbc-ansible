#!/bin/bash
docker-compose run --rm ansible ansible-playbook -i ansible-host.yml playbook-docker.yml
