<div align="center">

# 🚀 Employee Platform

### Production-Grade Kubernetes Platform Engineering Project

*Designing, Building and Operating Cloud-Native Applications through Progressive Platform Engineering*

<br>

![Python](https://img.shields.io/badge/Python-3.12-3776AB?logo=python&logoColor=white)
![FastAPI](https://img.shields.io/badge/FastAPI-Framework-009688?logo=fastapi&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-16-336791?logo=postgresql&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?logo=docker&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?logo=kubernetes&logoColor=white)
![Helm](https://img.shields.io/badge/Helm-0F1689?logo=helm&logoColor=white)
![NGINX Ingress](https://img.shields.io/badge/NGINX-Ingress-009639?logo=nginx&logoColor=white)
![TLS](https://img.shields.io/badge/TLS-Enabled-success)
![Minikube](https://img.shields.io/badge/Minikube-Local_Cluster-orange)
![License](https://img.shields.io/badge/License-MIT-yellow)

<br>

> **Build • Package • Deploy • Expose • Secure • Operate**

*A production-inspired platform engineering project demonstrating how modern cloud-native applications evolve from source code to a secure, production-ready Kubernetes platform.*

</div>

---

# 📖 Overview

Employee Platform is a production-grade Platform Engineering learning project that demonstrates how modern cloud-native applications are built, packaged, provisioned, deployed, exposed, secured and operated on Kubernetes.

Unlike traditional CRUD applications where the application itself is the primary focus, this repository intentionally treats the Employee API as the workload running on the platform.

The real objective is to design and build the platform surrounding the application using engineering practices commonly followed by Platform Engineering, Cloud Infrastructure and Site Reliability Engineering (SRE) teams.

The platform now covers the lifecycle from infrastructure provisioning through application delivery and operational observability, using Terraform, Helm, Kubernetes, GitHub Actions, Prometheus and Grafana.

Every release introduces a single production concept and incrementally evolves the platform, mirroring how real enterprise platforms grow over time.

Rather than simply deploying an application to Kubernetes, this project focuses on answering questions such as:

- How should applications be packaged?
- How should configuration be externalized?
- How should secrets be managed?
- How should applications expose health?
- How should persistent storage be managed?
- How should applications be deployed repeatedly?
- How should networking be designed?
- How should traffic be secured?
- How should platforms evolve through versioned releases?
- How should infrastructure be provisioned declaratively?
- How should infrastructure state be managed safely?
- How should infrastructure drift be detected and reconciled?
- How should infrastructure provisioning be separated from application deployment?
- How should infrastructure changes be validated automatically in CI?

Each release builds upon the previous one while introducing only one major engineering concept at a time.

This allows every architectural decision to be understood not only from an implementation perspective, but also from an engineering and operational perspective.

---

# 🎯 Why This Project?

Modern software engineering extends far beyond writing application code.

Today's Platform Engineers are expected to understand every stage of an application's lifecycle, including:

- Containerization
- Infrastructure
- Kubernetes
- Networking
- Security
- Deployment Automation
- Release Engineering
- Platform Operations
- Observability
- Continuous Delivery

Most sample projects demonstrate only how to build an application.

Very few demonstrate **how to build the platform around the application**.

Employee Platform exists to bridge that gap.

The Employee API intentionally remains simple so that the engineering focus remains on the infrastructure, automation and platform capabilities rather than business logic.

The result is a repository that evolves into a realistic production platform while remaining approachable for learning and experimentation.

---

# 🌟 Project Philosophy

Throughout this project, one guiding principle has remained constant:

> **Understand the "Why" before implementing the "How".**

Instead of introducing every Kubernetes feature at once, the platform evolves incrementally through carefully planned releases.

Every new capability is introduced only when there is a genuine engineering need.

Examples include:

- Introducing ConfigMaps only after configuration became difficult to manage.
- Introducing Helm only after Kubernetes manifests became repetitive.
- Introducing Ingress only after Services alone became insufficient.
- Introducing TLS only after host-based routing had been implemented.
- Deferring Observability until networking foundations were complete.
- Introducing Terraform only after Kubernetes resource management became part of the platform lifecycle.
- Introducing reusable Terraform modules when infrastructure resources began to require consistent and reusable definitions.
- Introducing remote Terraform state when infrastructure state needed to be shared and managed independently of an individual developer workstation.
- Separating infrastructure provisioning from application deployment so Terraform and Helm have clearly defined ownership boundaries.

This mirrors how engineering teams gradually mature production platforms instead of attempting to build everything on day one.

---

# 🚀 Current Release

## **v2.2.0 — Infrastructure as Code**

Release 2.2 introduces Infrastructure as Code (IaC) and establishes a clear separation between infrastructure provisioning and application deployment.

Terraform is now responsible for provisioning and managing Kubernetes platform prerequisites, while Helm remains responsible for application deployment.

The infrastructure state is managed remotely using HCP Terraform, and Terraform validation, planning and application are integrated into the GitHub Actions CI pipeline.

Current platform capabilities include:

- ✅ Dockerized FastAPI application
- ✅ PostgreSQL integration
- ✅ Kubernetes Deployments
- ✅ ConfigMaps & Secrets
- ✅ Persistent Volume Claims
- ✅ Startup, Readiness & Liveness Probes
- ✅ Automated Deployment Scripts
- ✅ Helm-based Deployments
- ✅ Helm Best Practices
- ✅ Helper Templates
- ✅ Configurable Helm Values
- ✅ NGINX Ingress Controller
- ✅ Host-based Routing
- ✅ Path-based Routing
- ✅ TLS Termination
- ✅ HTTPS Support
- ✅ Automatic HTTP → HTTPS Redirection
- ✅ Prometheus Monitoring
- ✅ Grafana Dashboards
- ✅ Application Metrics
- ✅ Kubernetes Workload Metrics
- ✅ HTTP Error-rate Monitoring
- ✅ HTTP Status-code Monitoring
- ✅ P95 Latency Monitoring
- ✅ Container Restart Monitoring
- ✅ OOM-kill Monitoring
- ✅ Container Memory Monitoring
- ✅ Grafana Alerting
- ✅ Email Alert Notifications
- ✅ Mailpit-based Alert Testing
- ✅ Persistent Grafana Storage
- ✅ GitHub Actions CI Pipeline
- ✅ Automated Application Testing
- ✅ Docker Image Publishing to GHCR
- ✅ Helm Chart Validation
- ✅ Kubernetes Validation using Kind
- ✅ Kubernetes Deployment Smoke Testing
- ✅ CI Failure Diagnostics
- ✅ Manual Semantic Version Release Workflow
- ✅ Git Tag Automation
- ✅ GitHub Release Automation
- ✅ Terraform Infrastructure as Code
- ✅ Kubernetes Namespace Management
- ✅ PostgreSQL PersistentVolumeClaim Management
- ✅ Reusable Terraform Infrastructure Modules
- ✅ Terraform Variables
- ✅ Terraform Outputs
- ✅ Existing Kubernetes Resource Import
- ✅ Terraform State Management
- ✅ Infrastructure Drift Detection
- ✅ HCP Terraform Remote State
- ✅ GitHub Actions Terraform Authentication
- ✅ Automated Terraform Validation
- ✅ Automated Terraform Plan
- ✅ Automated Terraform Apply
- ✅ Infrastructure/Application Ownership Separation

The project now represents a production-inspired platform engineering workflow covering infrastructure provisioning, application development, containerization, Kubernetes deployment, observability, CI validation and release automation.

---

# 🎯 Engineering Goals

The long-term objective of Employee Platform is to simulate the responsibilities of a modern Platform Engineering team.

The project focuses on implementing production-inspired capabilities across multiple engineering domains.

### Container Platform

- Docker image creation
- Multi-stage builds
- Image versioning
- Local image management

### Kubernetes Platform

- Deployments
- ReplicaSets
- Services
- ConfigMaps
- Secrets
- Persistent Storage
- Health Probes
- Rolling Updates

### Platform Engineering

- Helm Charts
- Helm Best Practices
- Release Engineering
- Deployment Automation
- Environment Configuration
- Smoke Testing

### Networking

- Kubernetes Services
- NGINX Ingress
- Host-based Routing
- Path-based Routing
- TLS Termination
- HTTPS Redirection

### Security

- Kubernetes Secrets
- Externalized Configuration
- TLS Certificates
- Secure Application Exposure

### Observability

- Prometheus Metrics
- Application Metrics
- Kubernetes Workload Metrics
- Grafana Dashboards
- Grafana Alerting
- SMTP Email Notifications
- Persistent Grafana Storage

### CI/CD

- Github Actions CI Pipeline
- Automated Pytest executions
- GHCR Image publishing
- Rollout deployment validation using Kind
- Manual release workflow using SemVer input
- Multi level release validation
- Automated Git tag and release package creation and publishing with pre release notes
- Terraform formatting and validation
- Terraform plan validation
- Terraform infrastructure provisioning
- HCP Terraform remote state integration

### Infrastructure as Code

- Terraform
- Declarative infrastructure management
- Kubernetes resource provisioning
- Reusable Terraform modules
- Terraform variables
- Terraform outputs
- Infrastructure state management
- Remote state using HCP Terraform
- Infrastructure drift detection
- Infrastructure lifecycle management

### Future Platform Capabilities

- Structured Logging
- ArgoCD
- GitOps-based Continuous Delivery
- Progressive Delivery

---

# 📊 Platform Capability Matrix

| Capability | Status |
|------------|:------:|
| Docker Containerization | ✅ |
| Kubernetes Deployments | ✅ |
| PostgreSQL Integration | ✅ |
| ConfigMaps | ✅ |
| Secrets | ✅ |
| Persistent Storage | ✅ |
| Startup Probes | ✅ |
| Readiness Probes | ✅ |
| Liveness Probes | ✅ |
| Deployment Automation | ✅ |
| Smoke Testing | ✅ |
| Helm Packaging | ✅ |
| Helm Best Practices | ✅ |
| Helper Templates | ✅ |
| Helm Values | ✅ |
| NGINX Ingress | ✅ |
| Host-based Routing | ✅ |
| Path-based Routing | ✅ |
| TLS / HTTPS | ✅ |
| HTTP → HTTPS Redirect | ✅ |
| Prometheus Monitoring | ✅ |
| Grafana Dashboards | ✅ |
| Application Metrics | ✅ |
| Kubernetes Workload Metrics | ✅ |
| HTTP Error-rate Monitoring | ✅ |
| HTTP Status-code Monitoring | ✅ |
| P95 Latency Monitoring | ✅ |
| Container Restart Monitoring | ✅ |
| OOM-kill Monitoring | ✅ |
| Container Memory Monitoring | ✅ |
| Grafana Alerting | ✅ |
| Email Alert Notifications | ✅ |
| Persistent Grafana Storage | ✅ |
| GitHub Actions CI/CD | ✅ |
| Automated Testing | ✅ |
| Docker Image Publishing | ✅ |
| Kubernetes CI Validation | ✅ |
| Release Automation | ✅ |
| GitHub Releases | ✅ |
| Terraform IaC | ✅ |
| Terraform Modules | ✅ |
| Terraform Variables & Outputs | ✅ |
| Terraform State Management | ✅ |
| HCP Terraform Remote State | ✅ |
| Infrastructure Drift Detection | ✅ |
| Terraform CI Validation | ✅ |
| ArgoCD GitOps | 🚧 |
| Structured Logging | 📅 |
| Horizontal Pod Autoscaling | 📅 |
| cert-manager | 📅 |
| Service Mesh | 📅 |

**Legend**

- ✅ Implemented
- 🚧 Planned for upcoming releases
- 📅 Long-term roadmap

---

# 🏗 High-Level Platform Architecture

```text
                                       Client

                                          │

                                 employee.local

                                          │

                               HTTPS (TLS / SSL)

                                          │

                                          ▼

                           NGINX Ingress Controller

                                          │

                         Host & Path Based Routing

                                          │

                                          ▼

                        employee-platform-service

                                          │

                                   EndpointSlice

                                          │

                                          ▼

                             Employee API Deployment

                                          │

                              FastAPI Application Pod

                                          │

                                          ▼

                             PostgreSQL Deployment

                                          │

                              Persistent Volume Claim


                                  /metrics
                                      │
                                      ▼
                                  Prometheus
                                      │
                                      ▼
                                   Grafana
                                  /       \
                         Dashboards       Alerts
                                           │
                                           ▼
                                      Mailpit SMTP
                                           │
                                           ▼
                                      Email Alerts
```

This architecture represents the platform as of **Release v2.0**, where applications are securely exposed through an NGINX Ingress Controller and monitored using Prometheus and Grafana. Grafana provides operational dashboards and alerting, while Mailpit provides a local SMTP endpoint for validating email notifications.

# 🏗 Infrastructure and Delivery Architecture (as of Release 2.2)

                         Git Repository
                              │
             ┌────────────────┴────────────────┐
             │                                 │
             ▼                                 ▼
        Terraform                         Helm Chart
             │                                 │
             ▼                                 ▼
       HCP Terraform                    Kubernetes Cluster
       Remote State                          │
             │                               ├── Employee API
             ▼                               ├── PostgreSQL
       Infrastructure                        ├── Services
       Provisioning                          ├── Ingress
                                             └── ServiceMonitor

This architecture represents the platform as of Release v2.2, where Terraform provisions and manages selected Kubernetes infrastructure resources, Helm manages application deployment, and Prometheus and Grafana provide operational observability.

### Infrastructure Ownership

Terraform manages platform prerequisites and infrastructure resources:

- Kubernetes namespace
- PostgreSQL PersistentVolumeClaim

Helm manages application deployment resources:

- Employee API Deployment
- Employee API Service
- PostgreSQL Deployment
- PostgreSQL Service
- Ingress
- ConfigMap
- Secret
- ServiceMonitor

This separation prevents Terraform and Helm from competing to manage the same Kubernetes resources.

---

# 🛠 Technology Stack

| Category | Technology |
|-----------|------------|
| Programming Language | Python 3.12 |
| API Framework | FastAPI |
| Database | PostgreSQL 16 |
| ORM | SQLAlchemy |
| Containerization | Docker |
| Container Registry | GitHub Container Registry (GHCR) |
| Orchestration | Kubernetes |
| Package Management | Helm |
| Ingress Controller | NGINX Ingress |
| Metrics Collection | Prometheus |
| Visualization & Alerting | Grafana |
| Email Alert Testing | Mailpit |
| Local Kubernetes | Minikube |
| Automation | Bash |
| Version Control | Git |
| Documentation | Markdown |
| Operating System | Ubuntu (WSL2) |
| Development Environment | Visual Studio Code |
| CI/CD | GitHub Actions |
| Kubernetes CI Environment | Kind |
| Infrastructure as Code | Terraform |
| Terraform State Management | HCP Terraform |
| Infrastructure Provider | Kubernetes Provider |

---

# ✨ Platform Features

Employee Platform has evolved beyond a simple Kubernetes deployment into a production-inspired platform that demonstrates multiple engineering disciplines working together.

The platform is organized into four major capability areas.

---

## 🚀 Application Layer

The application layer represents the business workload deployed onto the platform.

### Features

- RESTful Employee Management API
- FastAPI framework
- SQLAlchemy ORM
- PostgreSQL integration
- Environment-driven configuration
- OpenAPI Specification
- Interactive Swagger UI
- Health endpoints
- Production-ready application structure

### REST Endpoints

| Endpoint | Description |
|-----------|-------------|
| `/` | Root endpoint |
| `/employees` | Employee API |
| `/health/live` | Liveness Probe |
| `/health/ready` | Readiness Probe |
| `/docs` | Swagger UI |
| `/openapi.json` | OpenAPI Specification |

---

## ☸ Kubernetes Platform

The application is deployed using Kubernetes-native resources following production-inspired best practices.

### Workloads

- Kubernetes Deployments
- ReplicaSets
- Rolling Updates
- Self-healing Pods
- Resource Requests
- Resource Limits

### Networking

- Services
- ClusterIP
- NodePort
- NGINX Ingress
- Host-based Routing
- Path-based Routing

### Configuration

- ConfigMaps
- Secrets
- Environment Variables
- Externalized Configuration

### Storage

- PersistentVolumeClaims
- PostgreSQL Persistent Storage

### Health Management

- Startup Probes
- Readiness Probes
- Liveness Probes

---

## 📦 Platform Engineering

The platform itself is deployed and managed using modern Platform Engineering principles.

Current capabilities include:

- Helm Charts
- Parameterized Deployments
- Environment-specific Values
- Helper Templates
- Shared Labels
- Release Versioning
- Automated Deployment
- Automated Validation
- Smoke Testing
- Release Documentation
- Infrastructure as Code
- Terraform Modules
- Remote Terraform State
- Infrastructure Drift Detection
- Infrastructure/Application Ownership Boundaries

---

## 🔐 Networking & Security

Release **v1.9** introduced secure application exposure.

Current networking capabilities include:

- NGINX Ingress Controller
- Host-based Routing
- Path-based Routing
- TLS Termination
- HTTPS Support
- Automatic HTTP → HTTPS Redirect
- Self-signed Certificates (Development)

---

## 📊 Observability & Alerting

Release **v2.0** introduced operational monitoring for the Employee API and its Kubernetes workload.

### Metrics

- Prometheus metrics collection
- Employee API application metrics
- Kubernetes workload metrics
- HTTP request rate monitoring
- HTTP error-rate monitoring
- HTTP status-code visibility
- Request latency monitoring
- P95 latency calculation
- Pod/container restart metrics
- OOM-kill visibility
- Container memory utilization

### Grafana

- Employee API operational dashboard
- Application performance panels
- Error-rate panels
- Status-code panels
- P95 latency panel
- Container/pod restart panel
- OOM-kill panel
- Memory utilization panel
- Persistent Grafana storage using a PVC

### Alerting

Grafana alert rules were created and tested for:

- High HTTP error rate
- High P95 latency
- Container restarts
- High memory utilization

Alert notifications are delivered through SMTP to **Mailpit**, allowing the complete alert lifecycle to be tested locally.

The alerting workflow was validated through controlled traffic and failure scenarios, including:

```text
Normal
   ↓
Pending
   ↓
Firing
   ↓
Email Notification
   ↓
Condition Clears
   ↓
Recovered
```

Dashboard definitions, alert rules and contact-point configuration are exported as JSON and maintained in Git alongside the monitoring Helm configuration.

## 🏗️ Infrastructure as Code

Release **v2.2** introduced Infrastructure as Code using Terraform.

Terraform is responsible for provisioning and managing Kubernetes platform prerequisites and persistent infrastructure resources.

### Managed Resources

- Kubernetes namespace
- PostgreSQL PersistentVolumeClaim

### Terraform Structure

```text
infrastructure/
└── terraform/
    ├── main.tf
    ├── namespace.tf
    ├── variables.tf
    ├── outputs.tf
    ├── terraform.tfvars.example
    ├── .terraform.lock.hcl
    └── modules/
        └── postgres-storage/
            ├── main.tf
            ├── variables.tf
            └── outputs.tf

---

# 📂 Repository Structure

The repository follows a production-inspired layout that separates application code, Kubernetes resources, Helm templates and deployment automation.

```text
employee-platform/
│
├── .github/                       # GitHub Actions Workflows 
│   └── workflows/
│       ├── ci.yml
│       └── release.yml
│
├── app/                           # FastAPI application
│
├── employee-platform/             # Helm Chart
│   ├── Chart.yaml
│   ├── values.yaml
│   ├── values-local.yaml
│   ├── values.example.yaml
│   ├── templates/
│   │
│   ├── app/
│   │   ├── deployment.yaml
│   │   ├── service.yaml
│   │   ├── ingress.yaml
│   │   ├── configmap.yaml
│   │   └── secret.yaml
│   │
│   ├── database/
│   │   ├── postgresql-deployment.yaml
│   │   └── postgresql-service.yaml
│   │
│   ├── NOTES.txt
│   └── _helpers.tpl
│
├── infrastructure/
│   └── terraform/
│       ├── main.tf
│       ├── namespace.tf
│       ├── variables.tf
│       ├── outputs.tf
│       ├── terraform.tfvars.example
│       ├── .terraform.lock.hcl
│       └── modules/
│           └── postgres-storage/
│               ├── main.tf
│               ├── variables.tf
│               └── outputs.tf
│
├── certs/
│   ├── employee.local.crt
│   ├── employee.local.key
│   └── openssl.cnf
│
├── scripts/
│   ├── deploy.sh
│   ├── smoke-test.sh
│   └── cleanup.sh
│
├── platform/
│   ├── mailpit/
│   │   ├── deployment.yaml
│   │   └── service.yaml
│   │
│   └── monitoring/
│       ├── values.yaml
│       ├── default-values.yaml
│       ├── alert-rules-grafana.json
│       ├── contact-points.json
│       └── dashboards/
│
├── Dockerfile
├── VERSION
├── CHANGELOG.md
└── README.md
```

---

# 🚀 Deployment Workflow

The platform supports both local deployment and automated CI validation.

## Local Deployment

```text
Developer

      │

      ▼

Git Commit

      │

      ▼

./scripts/deploy.sh

      │

      ▼

Docker Build

      │

      ▼

Image Versioning

      │

      ▼

Load Image into Minikube

      │

      ▼

Helm Upgrade / Install

      │

      ▼

Kubernetes API Server

      │

      ▼

Deployments

      │

      ▼

ReplicaSets

      │

      ▼

Pods

      │

      ▼

Services

      │

      ▼

Ingress

      │

      ▼

HTTPS Ready
```

## CI/CD Workflow

```text
Git Push / Pull Request

      │

      ▼

GitHub Actions

      │

      ├── Automated Tests
      │
      ├── Helm Validation
      │
      ├── Docker Build
      │
      ├── GHCR Image Push
      │
      ├── Kind Kubernetes Cluster
      │
      ├── Helm Deployment
      │
      ├── Rollout Validation
      │
      └── Kubernetes Smoke Test

      ▼

Validated CI Artifact
```

## Release Workflow

```text
Manual Release Request

      │

      ▼

Version Validation

      │

      ▼

Latest Release Comparison

      │

      ▼

Git Tag Creation

      │

      ▼

GitHub Release

      ▼

v2.1.0
```

---

# ☸ Kubernetes Resources

The platform currently provisions the following Kubernetes resources.

| Resource | Purpose |
|-----------|----------|
| Deployment | Employee API |
| Deployment | PostgreSQL |
| Service | Employee API |
| Service | PostgreSQL |
| ConfigMap | Application Configuration |
| Secret | Database Credentials |
| PersistentVolumeClaim | PostgreSQL Data |
| Ingress | Secure Application Exposure |
| Monitoring Stack | Prometheus & Grafana |
| Grafana PVC | Persistent Grafana Data |
| Mailpit Service | Local SMTP Alert Testing |

---

# 🌐 Networking Architecture

Release **v1.9** introduced production-inspired networking using the NGINX Ingress Controller.

Applications are no longer accessed directly through NodePorts.

Instead, traffic flows through an Ingress Controller which performs intelligent routing based on hostnames and URL paths.

```text
                 Client

                    │

         employee.local

                    │

             HTTPS (TLS)

                    │

                    ▼

      NGINX Ingress Controller

                    │

      Host-based Routing

                    │

      Path-based Routing

                    │

                    ▼

     employee-platform-service

                    │

                    ▼

             Application Pod
```

---

## Host-Based Routing

The platform currently exposes multiple virtual hosts.

| Host | Backend |
|------|---------|
| employee.local | Employee Platform |
| api.local | Employee Platform |
| dev.employee.local | Employee Platform |

This demonstrates how multiple domains can share a single Ingress Controller while routing requests independently.

---

## Path-Based Routing

The platform currently exposes multiple application paths.

| Path | Description |
|------|-------------|
| `/` | Root |
| `/employees` | Employee API |
| `/health` | Health Endpoints |
| `/docs` | Swagger Documentation |
| `/openapi.json` | OpenAPI Specification |

---

## TLS Termination

Traffic is encrypted using TLS before entering the Kubernetes cluster.

```text
Browser

     │

HTTPS

     │

TLS Handshake

     │

NGINX Ingress

     │

HTTP

     │

Employee API
```

TLS termination is handled entirely by the Ingress Controller, allowing the application to remain unaware of HTTPS while still providing secure communication to clients.

---

# 🔐 Security Architecture

The platform follows Kubernetes-native security practices.

Current implementation includes:

- Kubernetes Secrets
- Environment Variable Injection
- TLS Certificates
- HTTPS
- Secure Database Credentials
- Externalized Configuration

Sensitive information is never hardcoded into the application or Helm templates.

Instead, configuration is separated into:

- ConfigMaps
- Secrets
- Helm Values
- TLS Secrets

This allows secure deployments across multiple environments without modifying application code.

---

# ⚙ Helm Architecture

Beginning with Release **v1.8**, all deployments are managed through Helm.

The Helm chart has been designed using production-inspired best practices.

### Current Capabilities

- Reusable Helper Templates
- Common Labels
- Configurable Values
- Local Overrides
- Shared Naming Conventions
- Lint Validation
- Template Rendering
- NOTES.txt Guidance
- Version-controlled Releases

The chart is organized into logical template groups.

```text
templates/

├── app/
│
├── database/
│
├── NOTES.txt
│
└── _helpers.tpl
```

This structure keeps templates modular, reusable and easy to extend as the platform evolves.

---

# ⚙ Configuration Management

Configuration is completely externalized from the application.

The platform currently supports configuration through:

- Helm Values
- ConfigMaps
- Kubernetes Secrets
- Environment Variables

This allows the same application image to be deployed across multiple environments without requiring image rebuilds.

Current configurable parameters include:

- Application Settings
- Database Configuration
- Resource Requests
- Resource Limits
- Probe Configuration
- Replica Counts
- Networking
- Ingress
- TLS
- Image Versions

---

# ❤️ Health Monitoring

The platform implements Kubernetes-native health management.

| Probe | Purpose |
|---------|----------|
| Startup Probe | Determines when application startup has completed |
| Readiness Probe | Determines when traffic can safely reach the application |
| Liveness Probe | Detects unhealthy containers and triggers automatic restart |

Health endpoints are implemented directly within the FastAPI application and continuously monitored by Kubernetes.

This enables automatic recovery from failures while preventing traffic from reaching unhealthy workloads.

---

# 📈 Platform Evolution

One of the primary goals of this repository is to demonstrate the progressive evolution of a Kubernetes platform.

Every release introduces one major engineering concept while building upon previously established foundations.

```text
Docker

↓

Kubernetes

↓

Configuration

↓

Health

↓

Storage

↓

Automation

↓

Helm

↓

Networking

↓

Security

↓

Observability

↓

CI/CD
```

Rather than introducing all technologies simultaneously, the platform evolves in small, understandable steps that closely resemble how production engineering teams mature their internal platforms.

---

# 🚀 Quick Start

## Prerequisites

The following software is required to run the project locally.

| Software | Version |
|-----------|---------|
| Python | 3.12+ |
| Docker | Latest |
| Kubernetes | v1.30+ |
| Helm | v3+ |
| Minikube | Latest |
| kubectl | Compatible with cluster |
| Git | Latest |
| Bash | Linux / WSL2 |

---

## Clone the Repository

```bash
git clone https://github.com/<your-username>/employee-platform.git

cd employee-platform
```

---

## Start Minikube

```bash
minikube start
```

Verify the cluster.

```bash
kubectl get nodes
```

---

## Enable NGINX Ingress

```bash
minikube addons enable ingress
```

Verify that the controller is running.

```bash
kubectl get pods -n ingress-nginx
```

---

## Configure Local DNS

Update your local hosts file.

Linux / macOS

```text
/etc/hosts
```

Windows

```text
C:\Windows\System32\drivers\etc\hosts
```

Add the following entries.

```text
<MINIKUBE_IP> employee.local
<MINIKUBE_IP> api.local
<MINIKUBE_IP> dev.employee.local
```

Example

```text
192.168.49.2 employee.local
192.168.49.2 api.local
192.168.49.2 dev.employee.local
```

---

## Create TLS Secret

Generate the development certificate.

```bash
openssl req \
    -x509 \
    -nodes \
    -days 365 \
    -newkey rsa:2048 \
    -keyout certs/employee.local.key \
    -out certs/employee.local.crt \
    -config certs/openssl.cnf
```

Create the Kubernetes TLS Secret.

```bash
kubectl create secret tls employee-platform-tls \
    --cert=certs/employee.local.crt \
    --key=certs/employee.local.key \
    -n employee
```

---

# 🚀 Deployment

The project can now be deployed using a single command.

```bash
./scripts/deploy.sh
```

The deployment script performs the following operations automatically.

- Builds the Docker image
- Loads the image into Minikube
- Generates Helm manifests
- Deploys the application
- Deploys PostgreSQL
- Waits for rollouts
- Waits for Pods to become Ready
- Displays deployment summary

---

## Smoke Testing

Validate the deployment.

```bash
./scripts/smoke-test.sh
```

The script verifies:

- Root endpoint
- Employee endpoint
- Health endpoints
- Swagger UI
- API availability

---

# 🔍 Validation Commands

The following commands are useful while validating deployments.

---

## Helm

Validate the chart.

```bash
helm lint ./employee-platform
```

Render templates.

```bash
helm template employee-platform \
    ./employee-platform \
    -f employee-platform/values.yaml \
    -f employee-platform/values-local.yaml
```

Install or upgrade.

```bash
helm upgrade --install employee-platform \
    ./employee-platform \
    --namespace employee \
    --create-namespace
```

List releases.

```bash
helm list -n employee
```

---

## Kubernetes

View Pods.

```bash
kubectl get pods -n employee
```

View Deployments.

```bash
kubectl get deployments -n employee
```

View Services.

```bash
kubectl get svc -n employee
```

View Ingress.

```bash
kubectl get ingress -n employee
```

Describe Ingress.

```bash
kubectl describe ingress employee-platform -n employee
```

View ConfigMaps.

```bash
kubectl get configmap -n employee
```

View Secrets.

```bash
kubectl get secret -n employee
```

---

## Networking

Verify HTTP redirection.

```bash
curl -v http://employee.local
```

Verify HTTPS.

```bash
curl -vk https://employee.local
```

Verify alternate hosts.

```bash
curl https://api.local -k

curl https://dev.employee.local -k
```

---

## Health

```bash
curl https://employee.local/health/live -k

curl https://employee.local/health/ready -k
```

---

## Swagger

```text
https://employee.local/docs
```

---

# 🔄 Platform Deployment Model

The platform uses separate tools for infrastructure provisioning and application deployment.

### Infrastructure Provisioning

```text
Git
 ↓
GitHub Actions
 ↓
Terraform
 ↓
HCP Terraform Remote State
 ↓
Kubernetes
```

### Application Deployment

Git
 ↓
GitHub Actions / Local Deployment
 ↓
Helm
 ↓
Kubernetes
 ↓
Employee API + PostgreSQL

# 🧪 Testing Strategy

Every release is validated using multiple layers of verification.

## Application

- API validation
- Database connectivity
- CRUD operations
- Swagger availability

---

## Kubernetes

- Deployment rollout
- Pod readiness
- Probe validation
- Service discovery
- Resource creation

---

## Helm

- Lint validation
- Template rendering
- Values validation
- Release upgrades

---

## Networking

- Ingress routing
- Host-based routing
- Path-based routing
- HTTPS
- TLS termination
- HTTP → HTTPS redirect

---

## Observability

- Prometheus metric collection
- Grafana dashboard validation
- HTTP error-rate validation
- HTTP status-code validation
- P95 latency validation
- Container restart alert validation
- Memory alert validation
- Alert firing and recovery
- Email notification through Mailpit
- Grafana persistence across Pod restarts

---

## CI/CD

- Automated pytest execution
- PostgreSQL service container
- Helm lint validation
- Docker image build validation
- GHCR image publishing
- Kind Kubernetes deployment
- Kubernetes rollout validation
- Kubernetes readiness smoke testing
- Targeted failure diagnostics

---

## Release

- Release version format validation
- Latest release comparison
- Duplicate release tag detection
- Git tag creation
- GitHub Release creation

---

### Infrastructure Validation

Terraform infrastructure changes are validated through:

- `terraform fmt`
- `terraform validate`
- `terraform plan`
- `terraform apply`
- Kubernetes resource verification
- Terraform state verification
- Drift detection testing
- CI execution using HCP Terraform remote state

---



# 📈 Release Journey

The platform has been intentionally built through progressive releases.

| Release | Major Capability |
|----------|------------------|
| **1.0** | Initial Kubernetes Deployment |
| **1.1** | Services & Networking |
| **1.2** | ConfigMaps & Secrets |
| **1.3** | Startup, Readiness & Liveness Probes |
| **1.4** | PostgreSQL Integration |
| **1.5** | Persistent Storage (PVC) |
| **1.6** | Deployment Automation |
| **1.7** | Helm Migration |
| **1.8** | Helm Best Practices & Chart Refactoring |
| **1.9** | Ingress, Host Routing, TLS & HTTPS |
| **2.0** | Prometheus, Grafana, Dashboards & Alerting |
| **2.1** | GitHub Actions CI/CD, GHCR Publishing & Release Automation |
| **2.2** | Infrastructure as Code |

---

# ⭐ Release Highlights

## Release 1.8

Major platform improvements included:

- Helm helper templates
- Shared labels
- Parameterized deployments
- Configurable values
- Helm NOTES
- Helm lint validation
- Chart refactoring
- Deployment simplification

---

## Release 1.9

Networking became production-inspired.

Major additions included:

- NGINX Ingress Controller
- Multiple Virtual Hosts
- Host-based Routing
- Path-based Routing
- TLS Termination
- HTTPS Support
- Automatic HTTP → HTTPS Redirect
- Multi-host SAN Certificates

The platform is now securely exposed through an Ingress Controller instead of relying solely on NodePort Services.

---

## Release 2.0

Observability and alerting were introduced.

Major additions included:

- Prometheus monitoring
- Grafana dashboards
- Employee API application metrics
- Kubernetes workload metrics
- HTTP error-rate monitoring
- HTTP status-code monitoring
- P95 latency monitoring
- Container restart monitoring
- OOM-kill monitoring
- Container memory monitoring
- Grafana alert rules
- SMTP email notifications
- Mailpit email testing
- Persistent Grafana storage
- Dashboard, alert-rule and contact-point JSON maintained in Git

Alert rules were validated using controlled application traffic and failure scenarios, including verification of both alert firing and recovery notifications.

---

## Release 2.1

CI/CD automation was introduced to move the platform beyond manual deployment and validation.

Major additions included:

- GitHub Actions CI pipeline
- Automated application testing
- PostgreSQL CI service container
- Docker image builds
- GitHub Container Registry publishing
- Commit SHA-based image tagging
- Helm chart validation
- Ephemeral Kind Kubernetes validation
- Helm-based Kubernetes deployment in CI
- Kubernetes rollout validation
- Kubernetes readiness smoke testing
- Targeted CI failure diagnostics
- Manual release workflow
- Release version validation
- Git tag automation
- GitHub Release automation
- Generated GitHub release notes

CI and release automation are intentionally separated.

CI validates changes and produces an immutable commit-SHA-based container artifact, while the release workflow creates a human-friendly semantic release identity such as `v2.1.0`.

---

## Release 2.2

- Terraform
- Kubernetes resource management
- Reusable infrastructure modules
- Remote state
- Drift detection
- Infrastructure/application ownership separation
- CI integration

---

# 📸 Screenshots

The following screenshots will be added as the project evolves.

## Application

- Swagger UI
- OpenAPI Documentation
- Employee API

---

## Kubernetes

- Pods
- Deployments
- Services
- Ingress
- ConfigMaps
- Secrets

---

## Helm

- Helm Release
- Helm Values
- Helm Upgrade
- Helm NOTES

---

## Networking

- Ingress Rules
- TLS Configuration
- HTTPS Validation
- Host-based Routing

---

## Observability

- Prometheus Targets
- Grafana Dashboards
- Application Metrics
- Alert Rules
- Alert Firing and Recovery
- Mailpit Email Notifications

---

## GitHub Actions Pipeline

- CI pipeline
- Release Pipeline
- Automated Release and Package management

## Future Releases

Additional screenshots will be added as future platform capabilities are implemented.

- Terraform Apply
- ArgoCD Dashboard
- Centralized Logging

---

# 📊 Project Statistics

Current Platform Components

| Component | Status |
|-----------|--------|
| Dockerized Application | ✅ |
| PostgreSQL | ✅ |
| Kubernetes Platform | ✅ |
| NGINX Ingress | ✅ |
| TLS / HTTPS | ✅ |
| Helm Chart | ✅ |
| Prometheus | ✅ |
| Grafana | ✅ |
| Grafana Persistent Storage | ✅ |
| Mailpit | ✅ |
| Grafana Alerting | ✅ |
| CI & Release Pipeline | ✅ |
| IaC | ✅ |

These capabilities will continue to evolve as new platform releases are introduced.

---

# 🛣 Roadmap

Employee Platform follows an incremental release model where every release introduces one major engineering concept while preserving the foundations built in previous versions.

Rather than attempting to implement every Kubernetes capability at once, the platform evolves in the same way a production engineering team would mature an internal platform.

---

# 🚀 Release 2.0 — Platform Operations & Observability

Release **2.0** shifts the focus from **building and exposing** applications to **operating** them.

The platform now provides operational visibility into the Employee API and its Kubernetes workload.

## Implemented

### 📈 Observability

- Prometheus
- Application Metrics
- Kubernetes Workload Metrics
- HTTP Request Metrics
- HTTP Error-rate Monitoring
- HTTP Status-code Monitoring
- Request Latency Monitoring
- P95 Latency Monitoring

### 📊 Visualization

- Grafana
- Employee API Operational Dashboard
- Application Performance Panels
- Resource Utilization Panels
- Restart and OOM-kill Visibility

### 🚨 Alerting

- Grafana Alerting
- High Error-rate Alert
- High P95 Latency Alert
- Container Restart Alert
- High Memory Alert
- Email Notifications
- Mailpit SMTP Integration

### 💾 Persistence

- Persistent Grafana Storage
- Dashboard persistence across Pod Restarts

### 📦 Configuration

- Dashboard JSON exported to Git
- Alert Rule JSON exported to Git
- Contact Point JSON exported to Git
- Monitoring Helm configuration maintained in Git

### 🧪 Validation

The monitoring stack was validated using live application traffic and controlled failure scenarios.

Alert lifecycle testing covered:

- Pending
- Firing
- Email delivery
- Recovery

Release 2.0 establishes the monitoring baseline for the platform. Structured logging, centralized log collection, distributed tracing and more advanced observability capabilities remain future work.

---

# 🚀 Release 2.1 — CI/CD Automation

Release **2.1** introduces automated CI/CD and release engineering.

## Implemented

### 🔄 Continuous Integration

- GitHub Actions
- Automated Testing
- PostgreSQL CI Service Container
- Docker Image Build
- GitHub Container Registry Publishing
- Commit SHA-based Image Tagging
- Helm Chart Validation
- Kind Kubernetes Validation
- Helm Deployment Validation
- Kubernetes Rollout Validation
- Kubernetes Smoke Testing
- Targeted Failure Diagnostics

### 🚀 Release Automation

- Manual Release Trigger
- Semantic Version Validation
- Latest Release Comparison
- Duplicate Tag Detection
- Git Tag Creation
- GitHub Release Creation
- Automatically Generated Release Notes

The CI pipeline validates changes and produces immutable commit-SHA-based container images.

The release workflow is intentionally separate from CI and is manually initiated with an explicit release version.

---


# 🚀 Release 2.2 — Infrastructure as Code

Infrastructure provisioned using Terraform.

- Terraform
- Kubernetes Resources
- Namespace Management
- Infrastructure Modules
- Remote State
- Variables
- Outputs
- Reusable Infrastructure Components

This release separates platform provisioning from application deployment.

---

# 🚀 Release 2.3 — GitOps

Modern Platform Engineering increasingly relies on declarative deployments.

Planned capabilities include:

- ArgoCD
- GitOps
- Drift Detection
- Automatic Synchronization
- Rollback
- Progressive Delivery

At this stage Git becomes the single source of truth for platform configuration.

---

# 🚀 Release 3.0 — Production Platform

Release **3.0** represents the long-term vision for Employee Platform.

Possible capabilities include:

### Platform Security

- cert-manager
- Automatic TLS Renewal
- External Secrets
- RBAC Hardening
- Network Policies
- Pod Security Standards

### Scalability

- Horizontal Pod Autoscaler
- Cluster Autoscaler
- Resource Optimization

### Service Networking

- Service Mesh
- Istio
- mTLS
- Traffic Splitting
- Canary Deployments

### Observability

- OpenTelemetry
- Distributed Tracing
- Jaeger
- Tempo

### Reliability

- Chaos Engineering
- Backup & Restore
- Disaster Recovery
- High Availability

---

# 🎓 Engineering Concepts Explored

Throughout the project, the emphasis has always been on understanding the reasoning behind engineering decisions rather than simply implementing Kubernetes resources.

The following concepts have been explored across Releases **1.0–1.9**.

## Containers

- Docker Images
- Container Lifecycle
- Image Versioning
- Image Distribution

---

## Kubernetes Fundamentals

- Pods
- ReplicaSets
- Deployments
- Services
- Labels
- Selectors
- Namespaces

---

## Application Lifecycle

- Startup Probes
- Readiness Probes
- Liveness Probes
- Rolling Updates
- Self-healing

---

## Configuration Management

- ConfigMaps
- Secrets
- Environment Variables
- Externalized Configuration

---

## Storage

- Persistent Volumes
- Persistent Volume Claims
- Database Persistence

---

## Helm

- Charts
- Templates
- Values
- Helper Templates
- Conditional Rendering
- Loops
- Includes
- Named Templates
- Chart Structure
- Release Management

---

## Networking

- ClusterIP
- NodePort
- Ingress
- NGINX Ingress Controller
- Host-based Routing
- Path-based Routing
- DNS
- TLS
- HTTPS
- HTTP Redirects

---

## Observability

- Prometheus
- PromQL
- Application Metrics
- Histogram Metrics
- Percentile / P95 Latency
- Error-rate Monitoring
- Kubernetes Workload Metrics
- Grafana Dashboards
- Grafana Alerting
- Alert Lifecycle
- SMTP Notifications
- Persistent Grafana Storage

---

## Platform Engineering

- Deployment Automation
- Smoke Testing
- Release Engineering
- Versioning
- Repository Organization
- Production-inspired Project Structure

---

# 🧭 Engineering Principles

Every architectural decision throughout this repository follows a small set of engineering principles.

## Build Incrementally

Introduce one major engineering concept per release.

This keeps every release focused, understandable and easy to validate.

---

## Learn the "Why"

Understanding why a technology exists is more valuable than memorizing commands.

Every implementation in this project begins with understanding the engineering problem it solves.

---

## Prefer Kubernetes-native Solutions

Whenever possible, leverage Kubernetes primitives before introducing external tooling.

This keeps the platform simple, maintainable and aligned with cloud-native best practices.

---

## Automate Repetitive Work

Anything performed more than once should eventually become automated.

Examples include:

- Deployment
- Validation
- Smoke Testing
- Release Management

Automation improves consistency while reducing operational overhead.

---

## Externalize Configuration

Applications should never require rebuilding simply because configuration changes.

Environment-specific values belong in:

- ConfigMaps
- Secrets
- Helm Values

---

## Design for Production

Although the platform runs locally on Minikube, architectural decisions are intentionally made with production environments in mind.

Examples include:

- Health Probes
- Rolling Updates
- Ingress
- TLS
- Resource Limits
- Secure Configuration

---

## Documentation Is Part of the Product

A platform is only as useful as its documentation.

This repository treats documentation as a first-class engineering deliverable rather than an afterthought.

---

# 💡 Why This Repository Is Different

Many Kubernetes repositories demonstrate *what* resources to create.

This project attempts to explain *why* those resources exist and *when* they should be introduced.

Rather than presenting a finished solution, Employee Platform documents the journey of building a platform incrementally through versioned releases.

The focus is not simply on deploying an application, but on understanding the engineering decisions required to operate applications reliably in Kubernetes.

Every release builds upon previous work, creating a realistic progression from a single deployment to a production-inspired platform.

---

# 🤝 Contributing

Although this repository is primarily a personal learning and portfolio project, suggestions, discussions and constructive feedback are always welcome.

If you identify improvements, discover issues or have ideas for future platform capabilities, feel free to open an issue or submit a pull request.

Engineering is a continuous learning process, and collaboration is always encouraged.

---

# 📄 License

This project is licensed under the **MIT License**.

You are free to use, modify and distribute this project in accordance with the terms of the license.

---

# 👨‍💻 Author

## Vishnusekar C

**DevOps Engineer | Cloud Engineer | Kubernetes Enthusiast | Platform Engineering Learner**

Passionate about building cloud-native platforms through hands-on engineering, continuous learning and production-inspired experimentation.

### Areas of Interest

- Platform Engineering
- Kubernetes
- Cloud Infrastructure
- DevOps
- Site Reliability Engineering (SRE)
- Infrastructure as Code
- Automation
- Observability

---

<div align="center">

## ⭐ If you found this repository useful, consider giving it a star!

Every release represents another step in the journey toward building a production-grade cloud-native platform.

Thank you for visiting the Employee Platform repository!

**Happy Learning! 🚀**

</div>