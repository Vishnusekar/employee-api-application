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

Employee Platform is a **production-grade Platform Engineering learning project** that demonstrates how modern cloud-native applications are built, packaged, deployed, exposed and secured on Kubernetes.

Unlike traditional CRUD applications where the application itself is the primary focus, this repository intentionally treats the Employee API as the workload running on the platform.

The real objective is to design and build the **platform surrounding the application** using engineering practices commonly followed by Platform Engineering, Cloud Infrastructure and Site Reliability Engineering (SRE) teams.

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

This mirrors how engineering teams gradually mature production platforms instead of attempting to build everything on day one.

---

# 🚀 Current Release

## **v2.0.0 — Observability & Alerting**

Release 2.0 extends the platform from securely deploying and exposing applications to actively monitoring and operating them.

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

The project now represents a complete production-inspired deployment and monitoring workflow from source code to secure application exposure and operational alerting.

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

### Future Platform Capabilities

- Structured Logging
- Centralized Log Collection
- GitOps
- CI/CD
- Infrastructure as Code
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
| Structured Logging | 🚧 |
| GitHub Actions CI/CD | 🚧 |
| Terraform IaC | 🚧 |
| ArgoCD GitOps | 🚧 |
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

---

# 🛠 Technology Stack

| Category | Technology |
|-----------|------------|
| Programming Language | Python 3.12 |
| API Framework | FastAPI |
| Database | PostgreSQL 16 |
| ORM | SQLAlchemy |
| Containerization | Docker |
| Container Registry | Local Minikube Image Store |
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

---

# 📂 Repository Structure

The repository follows a production-inspired layout that separates application code, Kubernetes resources, Helm templates and deployment automation.

```text
employee-platform/
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

The deployment process intentionally mirrors how many engineering teams deploy applications into Kubernetes.

```text
Developer

      │

      ▼

Git Commit

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

CI/CD (Next)
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

## Future Releases

Additional screenshots will be added as future platform capabilities are implemented.

- GitHub Actions Pipeline
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

Once the platform becomes observable, deployment automation will be introduced.

Planned capabilities include:

- GitHub Actions
- Automated Build
- Automated Testing
- Docker Image Publishing
- Helm Validation
- Kubernetes Validation
- Release Automation
- Semantic Versioning
- GitHub Releases

Deployment should eventually become as simple as pushing code to the repository.

---

# 🚀 Release 2.2 — Infrastructure as Code

Infrastructure provisioning will be introduced using Terraform.

Planned capabilities include:

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