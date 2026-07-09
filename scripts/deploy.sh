#!/bin/bash

set -euo pipefail

#############################################
# Helper Functions
#############################################

print_header() {
    echo
    echo "======================================"
    echo "$1"
    echo "======================================"
}

#############################################
# Paths
#############################################

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "${SCRIPT_DIR}")"

APP_NAME="employee-api"
NAMESPACE="employee"

VERSION="$(cat "${PROJECT_ROOT}/VERSION")"
IMAGE="${APP_NAME}:${VERSION}"

MANIFEST_DIR="${PROJECT_ROOT}/build/manifests"
GENERATED_DEPLOYMENT="${MANIFEST_DIR}/deployment.yaml"

#############################################
# Build Image
#############################################

print_header "Building Docker Image"

docker build \
    -t "${IMAGE}" \
    -f "${PROJECT_ROOT}/Dockerfile" \
    "${PROJECT_ROOT}"

#############################################
# Load Image
#############################################

print_header "Loading Image into Minikube"

minikube image load "${IMAGE}"

#############################################
# Generate Manifest
#############################################

print_header "Generating Kubernetes Manifest"

mkdir -p "${MANIFEST_DIR}"

sed "s|IMAGE_TAG|${VERSION}|g" \
    "${PROJECT_ROOT}/k8s/deployment.yaml" \
    > "${GENERATED_DEPLOYMENT}"

#############################################
# Apply Resources
#############################################

print_header "Applying Kubernetes Resources"

kubectl apply \
    -f "${PROJECT_ROOT}/k8s/configmap.yaml" \
    -f "${GENERATED_DEPLOYMENT}" \
    -f "${PROJECT_ROOT}/k8s/service.yaml"

#############################################
# Verify ConfigMap
#############################################

print_header "Verifying ConfigMap"

kubectl get configmap "${APP_NAME}-config" \
    -n "${NAMESPACE}"

#############################################
# Wait For Deployment
#############################################

print_header "Waiting For Rollout"

kubectl rollout status deployment/"${APP_NAME}" \
    -n "${NAMESPACE}"

#############################################
# Wait For Availability
#############################################

print_header "Waiting For Deployment Availability"

kubectl wait \
    --for=condition=Available \
    deployment/"${APP_NAME}" \
    -n "${NAMESPACE}" \
    --timeout=120s

#############################################
# Wait For Pod Ready
#############################################

print_header "Waiting For Pod Readiness"

kubectl wait \
    --for=condition=Ready \
    pod \
    -l app="${APP_NAME}" \
    -n "${NAMESPACE}" \
    --timeout=120s

#############################################
# Deployment Summary
#############################################

print_header "Deployment Summary"

kubectl get deployment "${APP_NAME}" \
    -n "${NAMESPACE}"

echo

kubectl get pods \
    -n "${NAMESPACE}"

echo

kubectl get svc \
    -n "${NAMESPACE}"

echo
echo "Deployment completed successfully."