#!/usr/bin/env bash
set -o errexit
tag=ghcr.io/rbaghbanli/dynu
docker build -t ${tag} .
docker push ${tag}
