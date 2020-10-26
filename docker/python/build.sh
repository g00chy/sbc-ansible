#!/bin/bash
docker buildx build -t registry.localdomain/ansible:latest --platform linux/amd64,linux/arm64,linux/arm/v7 .
