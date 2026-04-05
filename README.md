<div align="center">

# 🛠️ neytor/tools

**Lightweight troubleshooting & diagnostics container — multi-architecture Docker image**

[![Docker Pulls](https://img.shields.io/docker/pulls/neytor/tools?style=for-the-badge&logo=docker&logoColor=white&color=2496ED)](https://hub.docker.com/r/neytor/tools)
[![Docker Image Size](https://img.shields.io/docker/image-size/neytor/tools/latest?style=for-the-badge&logo=docker&logoColor=white&color=2496ED)](https://hub.docker.com/r/neytor/tools)
[![GitHub Stars](https://img.shields.io/github/stars/YonierGomez/tools?style=for-the-badge&logo=github&logoColor=white&color=181717)](https://github.com/YonierGomez/tools/stargazers)
[![GitHub Actions](https://img.shields.io/github/actions/workflow/status/YonierGomez/tools/docker-image.yml?style=for-the-badge&logo=githubactions&logoColor=white&label=CI)](https://github.com/YonierGomez/tools/actions)
[![License](https://img.shields.io/github/license/YonierGomez/tools?style=for-the-badge&color=green)](LICENSE)

---

### Built with

![Alpine Linux](https://img.shields.io/badge/Alpine_Linux-0D597F?style=for-the-badge&logo=alpine-linux&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)
![AWS](https://img.shields.io/badge/AWS_CLI-FF9900?style=for-the-badge&logo=amazon-web-services&logoColor=white)
![Kubernetes](https://img.shields.io/badge/kubectl-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)

</div>

---

## Overview

A minimal Alpine Linux container packed with the most common tools for **network diagnostics, endpoint validation, DNS resolution, AWS operations, and Kubernetes troubleshooting**. Rebuilt every Monday to stay in sync with the latest Alpine release.

## Quick Start

```bash
docker run --rm -it neytor/tools
```

## Usage

### Docker CLI

```bash
docker pull neytor/tools:latest
docker run --rm -it neytor/tools
```

### Docker Compose

```yaml
services:
  tools:
    container_name: tools
    image: neytor/tools:latest
    stdin_open: true
    tty: true
```

## Installed Packages

| Package | Purpose |
|---|---|
| `curl` | HTTP requests & endpoint validation |
| `wget` | File downloads |
| `bind-tools` | DNS diagnostics (`dig`, `nslookup`, `host`) |
| `iproute2` | Network tooling (`ss`, `ip`) |
| `aws-cli` | AWS CLI v2 operations |
| `kubectl` | Kubernetes cluster management |
| `python3` | Scripting & automation |
| `bash` | Shell |
| `zip` / `unzip` | Archive handling |

## Demo

### curl — HTTP requests & endpoint validation
![curl demo](assets/01-curl.gif)

### wget — File downloads
![wget demo](assets/02-wget.gif)

### bind-tools — DNS diagnostics
![bind-tools demo](assets/03-bind-tools.gif)

### iproute2 — Network tooling (`ss`, `ip`)
![iproute2 demo](assets/04-iproute2.gif)

### aws-cli — AWS CLI v2 operations
![aws-cli demo](assets/05-aws-cli.gif)

### kubectl — Kubernetes cluster management
![kubectl demo](assets/06-kubectl.gif)

### python3 — Scripting & automation
![python3 demo](assets/07-python3.gif)

### zip / unzip — Archive handling
![zip/unzip demo](assets/08-zip-unzip.gif)

## Supported Architectures

| Architecture | Tag |
|---|---|
| `linux/amd64` | `latest`, `<alpine-version>` |
| `linux/arm64` | `latest`, `<alpine-version>` |

Both architectures are built natively (no QEMU emulation) using GitHub-hosted runners.

## CI / CD Pipeline

The workflow runs automatically every Monday at 08:00 UTC and follows four stages:

| Phase | Job | Description |
|---|---|---|
| 1 | `check-version` | Detects the latest Alpine Linux version and compares with the last GitHub Release |
| 2 | `build` | Builds per-arch images on native runners and pushes by digest |
| 3 | `build-and-push` | Merges digests into a single multi-arch manifest |
| 4 | `release` | Creates a GitHub Release tagged with the Alpine version |

You can also trigger a manual build via **Actions → Run workflow** with options to force a rebuild or skip release creation.

## Versioning

Image tags follow the Alpine Linux version (e.g., `3.21.3`). The `latest` tag always points to the most recent build.

```bash
docker pull neytor/tools:latest
docker pull neytor/tools:3.21.3
```

---

<div align="center">

Visit my website at [yonier.com](https://www.yonier.com)

</div>
