#!/bin/bash

set -e

APP_NAME="employee-api"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
MANIFEST_DIR="${PROJECT_ROOT}/build/manifests"
GENERATED_DEPLOYMENT="${MANIFEST_DIR}/deployment.yaml"

echo "======================================"
echo "Docker Images"
echo "======================================"

docker images | grep ${APP_NAME} || true

echo
read -p "Delete unused Docker images? (y/n): " choice

if [[ "$choice" == "y" ]]; then

    docker image prune -f

fi

echo
echo "======================================"
echo "Current Minikube Images"
echo "======================================"

minikube image ls | grep ${APP_NAME} || true

rm -f "${GENERATED_DEPLOYMENT}"

echo
echo "Cleanup completed."
