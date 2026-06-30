#!/bin/bash

set -e

APP_NAME="employee-api"

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

rm -f "${PROJECT_ROOT}/k8s/build/manifests/deployment.yaml"

echo
echo "Cleanup completed."
