# Monitoring Platform

This directory contains the shared observability components for the Employee Platform.

Unlike the application Helm chart, which owns only the Employee Platform workload, the components managed here are intended to be shared across all workloads deployed into the Kubernetes cluster.

## Planned Components

- Prometheus
- Grafana
- Alertmanager
- kube-state-metrics
- Node Exporter

## Goals

- Collect Kubernetes infrastructure metrics
- Collect application metrics
- Visualize platform health
- Configure alerting
- Provide operational visibility