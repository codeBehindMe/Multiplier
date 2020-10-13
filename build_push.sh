#!/usr/bin/env bash
set -euxo pipefail
echo "building docker image and pushing to project $1"
docker build -t calculator/multiplier .
docker tag calculator/multiplier gcr.io/"$1"/calculator/multiplier:latest
docker push gcr.io/"$1"/calculator/multiplier:latest
echo "done"