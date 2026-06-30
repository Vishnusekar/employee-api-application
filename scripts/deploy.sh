#!/bin/bash

set -e

# Directory where this script resides
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Project root (parent of scripts/)
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

APP_NAME="employee-api"
NAMESPACE="employee"

VERSION=$(cat "${PROJECT_ROOT}/VERSION")

IMAGE="${APP_NAME}:${VERSION}"

echo "======================================"
echo "Building Docker Image"
echo "======================================"

docker build \
    -t "${IMAGE}" \
    -f "${PROJECT_ROOT}/Dockerfile" \
    "${PROJECT_ROOT}"

echo
echo "======================================"
echo "Loading Image into Minikube"
echo "======================================"

minikube image load "${IMAGE}"

echo
echo "======================================"
echo "Updating Kubernetes Deployment"
echo "======================================"

kubectl set image deployment/${APP_NAME} \
${APP_NAME}=${IMAGE} \
-n "${NAMESPACE}"
kubectl apply -f ${PROJECT_ROOT}/k8s/

echo
echo "======================================"
echo "Waiting for Rollout"
echo "======================================"

kubectl rollout status deployment/${APP_NAME} \
-n "${NAMESPACE}"

echo
echo "======================================"
echo "Deployment Successful"
echo "======================================"

kubectl get pods -n "${NAMESPACE}"
