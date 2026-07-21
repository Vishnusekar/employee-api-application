#!/bin/bash

set -euo pipefail

#############################################
# Variables
#############################################

APP_NAME="employee-api"
RELEASE_NAME="employee-platform"
NAMESPACE="employee"

#############################################
# Docker Images
#############################################

echo "======================================"
echo "Docker Images"
echo "======================================"

docker images | grep ${APP_NAME} || true

echo
read -p "Delete unused Docker images? (y/n): " choice

if [[ "$choice" == "y" ]]; then

    docker image prune -f

fi

#############################################
# Helm Release
#############################################

echo
read -p "Uninstall Helm release? (y/n): " choice

if [[ "${choice}" == "y" ]]; then
    helm uninstall "${RELEASE_NAME}" -n "${NAMESPACE}" || true
fi


#############################################
# Minikube Images
#############################################

echo
echo "======================================"
echo "Minikube Images"
echo "======================================"

minikube image ls | grep "${APP_NAME}" || true

echo
echo "Cleanup completed."