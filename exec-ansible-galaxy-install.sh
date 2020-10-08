#!/bin/bash
docker-compose run --rm ansible ansible-galaxy install -r playbook/requirements.yml -p playbook/roles
