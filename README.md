<div align="center">

# 🚀 Employee Platform

### A Production-Inspired Platform Engineering Project

**FastAPI • PostgreSQL • Docker • Kubernetes • Helm • Minikube**

![Python](https://img.shields.io/badge/Python-3.12-blue)
![FastAPI](https://img.shields.io/badge/FastAPI-Framework-green)
![Docker](https://img.shields.io/badge/Docker-Containerization-2496ED)
![Kubernetes](https://img.shields.io/badge/Kubernetes-Orchestration-326CE5)
![Helm](https://img.shields.io/badge/Helm-Package_Manager-0F1689)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-336791)
![License](https://img.shields.io/badge/License-MIT-yellow)

---

*A project built to learn, implement and demonstrate modern Platform Engineering and Kubernetes practices from the ground up.*

</div>

---

# 📖 Overview

Employee Platform is a production-inspired platform built to demonstrate how a cloud-native application evolves from source code into a fully automated Kubernetes deployment.

Unlike traditional CRUD projects where the application is the primary focus, this repository focuses on the platform surrounding the application.

The goal is to build every component incrementally while following engineering practices commonly used in enterprise DevOps and Platform Engineering teams.

Current Release:

> **v1.8.0 – Helm Best Practices**

---

# 🎯 Objectives

This project was built to demonstrate practical experience with:

- Docker image creation
- Kubernetes application deployment
- Configuration management
- Secrets management
- Health probes
- Persistent storage
- PostgreSQL integration
- Helm package management
- Deployment automation
- Release management
- Production-inspired repository organization

---

# 🏗 High Level Architecture

```text
                      Developer

                          │

                   ./deploy.sh

                          │

                  Docker Build

                          │

             Load Image into Minikube

                          │

               Helm Upgrade / Install

                          │

                  Kubernetes Cluster
         ┌────────────────┴────────────────┐
         │                                 │
         │                                 │
 Employee API                    PostgreSQL Database
         │                                 │
         │                                 │
 ConfigMap                         Persistent Volume
 Secret
```

---

# ⚙️ Technology Stack

| Category | Technology |
|-----------|------------|
| Language | Python 3.12 |
| API Framework | FastAPI |
| Database | PostgreSQL 16 |
| ORM | SQLAlchemy |
| Containerization | Docker |
| Orchestration | Kubernetes |
| Package Management | Helm |
| Local Cluster | Minikube |
| Automation | Bash |
| Version Control | Git |
| Documentation | Markdown |

---

# ✨ Features

## Application

- RESTful Employee API
- PostgreSQL persistence
- SQLAlchemy ORM
- Environment-driven configuration

## Kubernetes

- Deployments
- Services
- ConfigMaps
- Secrets
- PersistentVolumeClaims
- Startup Probes
- Readiness Probes
- Liveness Probes

## Platform Engineering

- Helm Chart
- Version-controlled releases
- Changelog
- Automated deployment
- Smoke testing
- Production-inspired repository structure

---

# 📂 Repository Structure

```
employee-platform/
│
├── employee-platform/          # Helm Chart
│   ├── templates/
│   ├── values.yaml
│   ├── values-local.yaml
│   ├── values.example.yaml
│   └── Chart.yaml
│
├── app/
│
├── scripts/
│   ├── deploy.sh
│   ├── smoke-test.sh
│   └── cleanup.sh
│
├── Dockerfile
├── VERSION
├── CHANGELOG.md
└── README.md
```

---

# 🚀 Deployment Workflow

```
Developer

↓

Docker Build

↓

Minikube Image Load

↓

Helm Upgrade

↓

Kubernetes Deployment

↓

Rollout Validation

↓

Smoke Test

↓

Application Ready
```

---

# 🔧 Kubernetes Resources

Current platform deploys:

| Resource | Purpose |
|-----------|----------|
| Deployment | Employee API |
| Deployment | PostgreSQL |
| Service | Employee API |
| Service | PostgreSQL |
| ConfigMap | Application configuration |
| Secret | Sensitive configuration |
| PVC | PostgreSQL persistent storage |

---

# ❤️ Health Monitoring

The application implements Kubernetes-native health checks.

| Probe | Purpose |
|---------|----------|
| Startup Probe | Detect application startup |
| Readiness Probe | Determine traffic readiness |
| Liveness Probe | Detect unhealthy containers |

---

# 🔐 Configuration Management

Configuration is externalized using Kubernetes resources.

- ConfigMaps
- Secrets
- Helm Values

This enables environment-specific deployments without rebuilding container images.

---

# 📦 Helm

Deployment is managed entirely through Helm.

```bash
helm upgrade --install employee-platform \
    ./employee-platform \
    --namespace employee \
    --create-namespace
```

Current chart manages:

- Application
- PostgreSQL
- Services
- ConfigMaps
- Secrets

---

# 🚀 Quick Start

Clone the repository

```bash
git clone <repository-url>
```

Build and deploy

```bash
./scripts/deploy.sh
```

Run smoke tests

```bash
./scripts/smoke-test.sh
```

---

# 📈 Release Journey

| Version | Milestone |
|----------|-----------|
| 1.0 | Initial Kubernetes Deployment |
| 1.1 | Services |
| 1.2 | ConfigMaps & Secrets |
| 1.3 | Health Probes |
| 1.4 | PostgreSQL Integration |
| 1.5 | Persistent Storage |
| 1.6 | Deployment Automation |
| 1.7 | Helm Migration |
| **1.8** | **Helm Best Practices** |

---

# 🛣 Roadmap

## Completed

- Docker
- Kubernetes
- PostgreSQL
- ConfigMaps
- Secrets
- PVC
- Health Probes
- Bash Automation
- Helm
- Helm Best Practices
- Helm Helper Templates

## Planned

- Ingress
- Prometheus
- Grafana
- GitHub Actions CI/CD
- ArgoCD
- GitOps
- Kubernetes Security
- Container Image Scanning

---

# 📚 Key Engineering Learnings

Throughout this project I focused on understanding not only *how* Kubernetes resources work, but *why* they are designed that way.

Some of the major concepts explored include:

- Kubernetes architecture
- Deployment strategies
- Container lifecycle
- Configuration externalization
- Infrastructure as Code
- Release engineering
- Helm templating
- Application health management
- Platform automation
- Production deployment workflows

---

# 📸 Screenshots

The following screenshots will be added in future releases.

- Application
- Swagger UI
- Kubernetes Pods
- Helm Releases
- Smoke Tests
- Deployment Workflow

---

# 🤝 Contributing

This repository is primarily a personal learning and portfolio project.

Suggestions and feedback are always welcome.

---

# 📄 License

This project is licensed under the MIT License.

---

# 👨‍💻 Author

**Vishnusekar C**

DevOps | Cloud | Kubernetes | Platform Engineering

Building practical cloud-native platforms through hands-on engineering.
