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

cleanup() {
    if [[ -n "${PORT_FORWARD_PID:-}" ]]; then
        kill "${PORT_FORWARD_PID}" >/dev/null 2>&1 || true
    fi
}

trap cleanup EXIT

#############################################
# Variables
#############################################

APP_NAME="employee-api"
NAMESPACE="employee"

#############################################
# Port Forward
#############################################

print_header "Starting Port Forward"

kubectl port-forward \
    svc/${APP_NAME}-service \
    8080:80 \
    -n "${NAMESPACE}" \
    >/tmp/${APP_NAME}-portforward.log 2>&1 &

PORT_FORWARD_PID=$!

#############################################
# Wait For Endpoint
#############################################

print_header "Waiting For Application"

for i in {1..30}; do

    if curl -fs http://127.0.0.1:8080/health/ready >/dev/null 2>&1; then
        echo "Application is Ready."
        break
    fi

    echo "Waiting..."
    sleep 2

done

#############################################
# Smoke Tests
#############################################

print_header "Root Endpoint"

curl http://127.0.0.1:8080/

echo

print_header "Employees Endpoint"

curl http://127.0.0.1:8080/employees

echo

print_header "Readiness Endpoint"

curl http://127.0.0.1:8080/health/ready

echo

print_header "Liveness Endpoint"

curl http://127.0.0.1:8080/health/live

echo

print_header "Smoke Test Passed"

echo "Application is healthy."