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

MANIFEST_DIR="${PROJECT_ROOT}/build/manifests"
GENERATED_DEPLOYMENT="${MANIFEST_DIR}/deployment.yaml"


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

mkdir -p "${MANIFEST_DIR}"

sed "s|IMAGE_TAG|${VERSION}|g" \
    "${PROJECT_ROOT}/k8s/deployment.yaml" \
    > "${GENERATED_DEPLOYMENT}"

kubectl apply \
    -f "${GENERATED_DEPLOYMENT}" \
    -f "${PROJECT_ROOT}/k8s/service.yaml"


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
