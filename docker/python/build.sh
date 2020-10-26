#!/bin/bash
docker buildx build -t registry.localdomain/hugo:latest linux/amd64,linux/arm64,linux/arm/v7 .
