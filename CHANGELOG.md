# Changelog

---

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