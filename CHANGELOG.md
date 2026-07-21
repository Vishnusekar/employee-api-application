# Changelog

---
# Changelog

All notable changes to this project will be documented in this file.

---
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