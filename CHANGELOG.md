# Changelog

---
# Changelog

All notable changes to this project will be documented in this file.

## [2.2.0] - 2026-09-17 – Infrastructure as Code

### Added

- Introduced Terraform for Infrastructure as Code.
- Added Terraform-based Kubernetes namespace management.
- Added Terraform-based PostgreSQL PersistentVolumeClaim management.
- Introduced reusable Terraform module for PostgreSQL persistent storage.
- Added Terraform variables for configurable infrastructure parameters.
- Added Terraform outputs for managed infrastructure resources.
- Added Terraform validation for PostgreSQL PersistentVolumeClaim access modes.
- Added Terraform resource import for existing Kubernetes infrastructure.
- Added infrastructure drift detection through Terraform plan.
- Added HCP Terraform for remote Terraform state management.
- Added GitHub Actions authentication for HCP Terraform.
- Added automated Terraform initialization in CI.
- Added automated Terraform validation in CI.
- Added automated Terraform planning in CI.
- Added automated Terraform infrastructure application in CI.

### Changed

- Separated infrastructure provisioning from application deployment.
- Terraform now manages the Kubernetes namespace and PostgreSQL PersistentVolumeClaim.
- Helm remains responsible for application and database workload deployment.
- PostgreSQL Helm deployment now consumes the Terraform-managed PersistentVolumeClaim.
- Terraform state was migrated from local state to HCP Terraform remote state.
- CI infrastructure provisioning now operates against the shared remote Terraform state.

### Fixed

- Fixed Terraform PVC lifecycle handling for Kubernetes environments using `WaitForFirstConsumer` storage provisioning.
- Disabled Terraform PVC `wait_until_bound` behavior so infrastructure provisioning does not block before the PostgreSQL workload creates the first volume consumer.
- Preserved the existing Kubernetes PVC during Terraform adoption and module refactoring without recreating the resource.

### Validation

- Verified existing Kubernetes namespace adoption using Terraform import.
- Verified existing PostgreSQL PersistentVolumeClaim adoption using Terraform import.
- Verified Terraform state migration after extracting the PostgreSQL storage module.
- Verified Terraform state address migration without recreating the Kubernetes PVC.
- Verified infrastructure drift detection by introducing and reconciling an out-of-band Kubernetes label change.
- Verified Terraform plan reports no changes when infrastructure matches the declared configuration.
- Verified HCP Terraform remote state migration successfully.
- Verified Terraform outputs and state through HCP Terraform.
- Verified GitHub Actions authentication to HCP Terraform using a repository secret.
- Verified Terraform `init`, `validate`, `plan` and `apply` successfully execute in GitHub Actions using remote state.
- Verified the complete CI pipeline succeeds with Terraform-managed infrastructure and Helm-managed application deployment.

### Platform Concepts Learned

- Infrastructure as Code (IaC)
- Terraform
- Declarative infrastructure management
- Terraform providers
- Terraform modules
- Terraform variables and outputs
- Terraform resource import
- Terraform state management
- Terraform state address migration
- Infrastructure drift detection
- Remote Terraform state
- HCP Terraform
- Terraform and Helm ownership boundaries
- Infrastructure lifecycle management
- `WaitForFirstConsumer` storage provisioning
- Infrastructure provisioning through CI/CD

## [2.1.0] - 2026-09-12 – CI/CD Automation

### Added

- Added GitHub Actions CI pipeline.
- Added automated Python test execution.
- Added PostgreSQL service container for CI test execution.
- Added Docker image build as part of CI.
- Added GitHub Container Registry (GHCR) image publishing.
- Added Helm chart validation using `helm lint`.
- Added ephemeral Kubernetes validation using Kind.
- Added PostgreSQL persistence setup for CI Kubernetes validation.
- Added Helm-based deployment validation in Kind.
- Added Kubernetes rollout verification.
- Added Kubernetes smoke testing through the Employee API readiness endpoint.
- Added targeted rollout and smoke-test failure diagnostics.
- Added manual release workflow using semantic version input.
- Added release version format validation.
- Added release version ordering validation against the latest release.
- Added Git tag creation and publishing.
- Added automated GitHub Release creation with generated release notes.

### Changed

- CI now validates the application through the complete build and deployment path rather than only running application tests.
- Docker images published by CI use the Git commit SHA as the image tag for immutable artifact identification.
- Release creation is separated from CI and is manually initiated from the `main` branch.
- Release tags use the `v<MAJOR.MINOR.PATCH>` convention.

### Validation

- Verified automated tests execute successfully in GitHub Actions.
- Verified Docker image builds successfully in CI.
- Verified Docker images are published to GHCR.
- Verified Helm chart validation succeeds in CI.
- Verified Employee API deployment succeeds in an ephemeral Kind Kubernetes cluster.
- Verified Kubernetes rollout validation.
- Verified Kubernetes readiness smoke test.
- Verified targeted failure diagnostics for rollout and smoke-test failures.
- Verified manual release creation using version `2.1.0`.
- Verified Git tag `v2.1.0` creation and publishing.
- Verified GitHub Release `v2.1.0` creation with generated release notes.

### Platform Concepts Learned

- Continuous Integration (CI)
- GitHub Actions
- CI service containers
- Immutable container artifacts
- Git commit SHA image tagging
- GitHub Container Registry
- Ephemeral Kubernetes environments
- Kind
- Helm validation in CI
- Kubernetes integration testing
- Deployment rollout verification
- Kubernetes smoke testing
- CI failure diagnostics
- Semantic versioning
- Git tags
- GitHub Releases
- Least-privilege workflow permissions
- Separation of CI and release automation

## [2.0.0] - 2026-08-28 – Observability & Alerting

### Added

- Introduced Prometheus monitoring using `kube-prometheus-stack`.
- Added Grafana for application and Kubernetes observability.
- Added persistent Grafana storage using a PersistentVolumeClaim.
- Added Grafana SMTP configuration for alert notifications.
- Added Mailpit for local email notification testing.
- Added operational dashboard for the Employee API.
- Added HTTP request/error-rate monitoring.
- Added HTTP status-code monitoring.
- Added P95 HTTP request latency monitoring.
- Added pod/container restart monitoring.
- Added OOM-kill monitoring.
- Added container memory utilization monitoring.
- Added Grafana alert rules for:
  - High HTTP error rate
  - High P95 latency
  - Container restarts
  - High memory utilization
- Added JSON exports for Grafana dashboards, alert rules and contact points.
- Added monitoring configuration to the Git repository.

### Changed

- Extended the platform from deployment and networking into operational monitoring.
- Grafana data is now persisted across Pod restarts through a PVC.
- Added email-based alert notification workflow through Mailpit for local development and testing.

### Validation

- Verified Prometheus collection of Employee API metrics.
- Verified Grafana dashboard panels using live application traffic.
- Generated controlled 4xx traffic to validate error-rate and status-code monitoring.
- Generated application traffic to validate request latency metrics.
- Tested alert lifecycle from Pending/Firing through Recovery.
- Verified email delivery of Grafana alerts through Mailpit.
- Verified Grafana data persistence after Pod restart.

### Platform Concepts Learned

- Prometheus metrics
- Prometheus queries (PromQL)
- Grafana dashboards
- Grafana alerting
- Histogram metrics and percentile calculations
- HTTP error-rate monitoring
- Kubernetes workload metrics
- Container memory monitoring
- Container restart detection
- OOM-kill detection
- Alert lifecycle and recovery
- SMTP-based alert notification
- Persistent Grafana storage
- Observability-driven troubleshooting

---
## Release 1.9.0 - 2026-08-06 - Kubernetes Enterprise Networking

### Added

- NGINX Ingress Controller
- Host-based routing
- Path-based routing
- TLS support
- HTTPS
- HTTP → HTTPS redirect
- Multi-host support
- SAN certificate generation

### Changed

- Networking model migrated from NodePort to Ingress

### Security

- TLS termination
- HTTPS endpoints

## [1.8.0] - 2026-07-28 – Helm Best Practices

Highlights

• Refactored helper templates
• Introduced parameterized helper API
• Adopted Kubernetes recommended labels
• Added component-aware selectors
• Eliminated selector collisions
• Added installation notes (NOTES.txt)
• Improved deployment automation
• Added values.schema.json validation
• Enhanced chart maintainability and operator experience

## [1.7.0] - 2026-07-21

### Added

- Introduced Helm as the primary deployment mechanism.
- Created Helm chart (`employee-platform`) for the application.
- Added templated Kubernetes resources:
  - Application Deployment
  - Application Service
  - PostgreSQL Deployment
  - PostgreSQL Service
  - ConfigMap
  - Secret
- Introduced environment-specific configuration using:
  - `values.yaml`
  - `values-local.yaml`
  - `values.example.yaml`
- Added Helm release deployment through `deploy.sh`.
- Added Helm release status to deployment summary.
- Added deployment prerequisite validation for:
  - Docker
  - kubectl
  - Helm
  - Minikube
- Improved smoke test failure handling and diagnostics.

### Changed

- Migrated deployment workflow from `kubectl apply` to:

  Docker Build
  → Minikube Image Load
  → Helm Upgrade/Install
  → Rollout Validation

- Reorganized Helm values into logical sections:
  - Application
  - Service
  - ConfigMap
  - Secret
  - PostgreSQL

- Updated deployment scripts to use Helm releases.
- Updated smoke test to target Helm-managed services.
- Updated resource naming to follow Helm release conventions.
- Standardized PostgreSQL deployment naming.
- Updated application database discovery using Helm-generated service names.
- Disabled failure simulation by default (`FAIL_AFTER=0`).

### Migration Notes

- Existing PostgreSQL PersistentVolumeClaim is intentionally reused during the Helm migration.
- Legacy Kubernetes manifests and deployment scripts have been archived for one release to provide a rollback path.
- Helm is now the single source of truth for application deployment.

### Fixed

- Removed dependency on generated Kubernetes manifests.
- Removed image tag substitution using `sed`.
- Fixed deployment script cleanup logic.
- Fixed deployment naming consistency across all Kubernetes resources.
- Improved deployment validation and rollout monitoring.

---

## [1.6.3] - 2026-07-11

### Added

- SQLAlchemy ORM integration
- Employee ORM model
- Automatic database schema creation during application startup
- Database CRUD layer (`database/crud.py`)
- Database-backed Employee API
- Database-aware readiness verification
- Automatic Employee table creation using SQLAlchemy metadata

### Changed

- Replaced in-memory employee storage with PostgreSQL
- Employee API now retrieves data from the database instead of application memory
- Application startup now initializes the database schema before becoming ready
- Readiness endpoint now validates database connectivity in addition to application initialization

### Fixed

- Corrected SQLAlchemy package imports
- Fixed application startup failures caused by relative imports
- Fixed container image rollout inconsistencies through immutable image versioning
- Standardized Python virtual environment usage across WSL and VS Code
- Explicitly configured Kubernetes `imagePullPolicy`
- Improved deployment reliability during rolling updates

### Removed

- In-memory Employee data store
- Hardcoded Employee list from the application

### Platform Concepts Learned

- Object Relational Mapping (ORM)
- SQLAlchemy Declarative Models
- Database Sessions
- Automatic Schema Creation
- CRUD Layer Design
- Stateful Application Architecture
- Kubernetes Readiness vs Dependency Availability
- Immutable Container Images
- Rolling Update Debugging
- ReplicaSets during Deployments

### Engineering Milestones

- First stateful application deployment
- First production-style database integration
- First application-managed database schema
- Successfully migrated from volatile in-memory storage to persistent PostgreSQL storage
- Employee API now persists data across Pod restarts and deployments

## [1.6.2] - 2026-07-11

### Added

- PostgreSQL Deployment
- PostgreSQL ClusterIP Service
- Persistent Volume Claim integration
- PostgreSQL startup, readiness and liveness probes
- SQLAlchemy dependency
- PostgreSQL driver (psycopg)
- Database connection module
- Database session module
- Database health check module
- Temporary database connectivity endpoint
- Explicit imagePullPolicy in Deployment
- Improved deployment verification

### Changed

- Standardized project virtual environment
- Updated deployment workflow to use immutable image versions
- Improved image version management
- Improved deployment validation process

### Fixed

- Fixed generated deployment manifest issues
- Fixed image version rollout problems
- Fixed relative import issue in database router
- Fixed CrashLoopBackOff caused by application import failure
- Fixed multiple virtual environment inconsistencies
- Improved debugging of rolling deployments

### Platform Concepts Learned

- Stateful workloads
- Persistent Volumes
- Persistent Volume Claims
- StorageClasses
- PostgreSQL deployment on Kubernetes
- Native database health probes
- Immutable container images
- Rolling update behavior
- ReplicaSets during deployments

## [1.5.0] - 2026-07-08

### Added

- Kubernetes Secret support
- Secret manifest template
- Sensitive configuration externalization
- Secret-based environment variable injection

### Changed

- Application now reads credentials from Kubernetes Secrets
- Deployment updated to consume Secret values

### Fixed

- Removed hardcoded sensitive values
- Improved deployment security
- Separated application configuration from confidential information

### Platform Concepts Learned

- Kubernetes Secrets
- Base64 encoding
- Secure configuration management
- ConfigMap vs Secret
- Runtime secret injection

## [1.4.0] - Externalized Configuration & Deployment Pipeline

### Added
- Kubernetes ConfigMap for application configuration
- Automatic environment variable injection using envFrom
- Automated deployment pipeline
- Deployment validation
- Smoke test automation

### Changed
- Application configuration is now externalized from the Docker image.
- Deployment script generates Kubernetes manifests dynamically.
- Deployment validation now waits for rollout, deployment availability and pod readiness.

### Fixed
- Corrected deployment manifest generation.
- Improved deployment reliability.
- Simplified deployment verification workflow.

## [1.3.0] - Kubernetes Health Management

### Added
- Readiness Probe
- Liveness Probe
- Startup Probe

### Changed
- Refactored application lifecycle
- Improved Kubernetes health management

### Notes
Introduced Kubernetes-native health management by integrating application lifecycle with readiness, liveness and startup probes.


## [1.2.0] - Application Lifecycle Management

### Added
- Centralized application state
- Startup service
- Failure simulation service

### Changed
- Refactored application initialization
- Simplified app.py
- Improved separation of concerns

### Notes
This release introduces a clean application lifecycle architecture that will support future Kubernetes health probes, graceful shutdown, metrics, and observability.


## [1.1.0] - Refactored Architecture

### Added

- Project modular structure
- API routers
- Configuration module
- Logging module
- Data module
- Shared application state

### Changed

- Refactored application into modular architecture
- Simplified app.py
- Improved separation of concerns

### Notes

This release introduces the foundational architecture that future platform features will build upon.

## 1.0.2

### Added
- Readiness endpoint
- Liveness endpoint

### Changed
- Startup delay configurable

### Fixed
- Refactored application state

---

## 1.0.1

### Added
- Structured logging

---

## 1.0.0

### Initial Release