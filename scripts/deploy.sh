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

check_command() {
    command -v "$1" >/dev/null 2>&1 || {
        echo "ERROR: '$1' is not installed."
        exit 1
    }
}

#############################################
# Paths
#############################################

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "${SCRIPT_DIR}")"

APP_NAME="employee-api"
RELEASE_NAME="employee-platform"
NAMESPACE="employee"
DATABASE_NAME="postgres"

VERSION="$(cat "${PROJECT_ROOT}/VERSION")"
IMAGE="${APP_NAME}:${VERSION}"

HELM_CHART="${PROJECT_ROOT}/${RELEASE_NAME}"

APP_SELECTOR="app.kubernetes.io/instance=${RELEASE_NAME},app.kubernetes.io/component=api"
DB_SELECTOR="app.kubernetes.io/instance=${RELEASE_NAME},app.kubernetes.io/component=database"

#############################################
# Prerequisites
#############################################

print_header "Checking Prerequisites"

check_command docker
check_command kubectl
check_command helm
check_command minikube

#############################################
# Build Docker Image
#############################################

print_header "Building Docker Image"

docker build \
    -t "${IMAGE}" \
    -f "${PROJECT_ROOT}/Dockerfile" \
    "${PROJECT_ROOT}"

#############################################
# Load Image into Minikube
#############################################

print_header "Loading Image into Minikube"

minikube image load "${IMAGE}"

#############################################
# Deploy using Helm
#############################################

print_header "Deploying with Helm"

helm upgrade --install "${RELEASE_NAME}" \
    "${HELM_CHART}" \
    --namespace "${NAMESPACE}" \
    --create-namespace \
    -f "${HELM_CHART}/values.yaml" \
    -f "${HELM_CHART}/values-local.yaml"

#############################################
# Wait For Rollout
#############################################

print_header "Waiting For Rollout of Employee API Deployment"

kubectl rollout status \
    deployment/"${RELEASE_NAME}" \
    -n "${NAMESPACE}"

print_header "Waiting For Rollout of Postgres Deployment"

kubectl rollout status \
    deployment/"${RELEASE_NAME}"-"${DATABASE_NAME}" \
    -n "${NAMESPACE}"

#############################################
# Wait For Availability
#############################################

print_header "Waiting For Deployment Availability"

kubectl wait \
    --for=condition=Available \
    deployment/"${RELEASE_NAME}" \
    -n "${NAMESPACE}" \
    --timeout=180s

#############################################
# Wait For Pod Ready
#############################################

print_header "Waiting For Pod Readiness"

kubectl wait \
    --for=condition=Ready \
    pod \
    -l "${APP_SELECTOR}" \
    -n "${NAMESPACE}" \
    --timeout=180s

#############################################
# Deployment Summary
#############################################

print_header "Helm Release"

helm list -n "${NAMESPACE}"

echo

helm status "${RELEASE_NAME}" -n "${NAMESPACE}"

print_header "Deployments"

kubectl get deploy -n "${NAMESPACE}"

print_header "Pods"

kubectl get pods -n "${NAMESPACE}"

print_header "Services"

kubectl get svc -n "${NAMESPACE}"

echo
echo "Deployment completed successfully."

echo
read -p "Run smoke tests? (y/n): " choice

if [[ "${choice}" == "y" ]]; then
    "${SCRIPT_DIR}/smoke-test.sh"
fi