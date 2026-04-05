<div align="center">

# 🗂️ neytor/samba

**Lightweight Samba server on Alpine Linux — multi-architecture Docker image**

[![Docker Pulls](https://img.shields.io/docker/pulls/neytor/samba?style=for-the-badge&logo=docker&logoColor=white&color=2496ED)](https://hub.docker.com/r/neytor/samba)
[![Docker Image Size](https://img.shields.io/docker/image-size/neytor/samba/latest?style=for-the-badge&logo=docker&logoColor=white&color=2496ED)](https://hub.docker.com/r/neytor/samba)
[![GitHub Stars](https://img.shields.io/github/stars/YonierGomez/tools?style=for-the-badge&logo=github&logoColor=white&color=181717)](https://github.com/YonierGomez/tools/stargazers)
[![GitHub Actions](https://img.shields.io/github/actions/workflow/status/YonierGomez/tools/docker-image.yml?style=for-the-badge&logo=githubactions&logoColor=white&label=CI)](https://github.com/YonierGomez/tools/actions)
[![License](https://img.shields.io/github/license/YonierGomez/tools?style=for-the-badge&color=green)](LICENSE)

---

### Built with

![Alpine Linux](https://img.shields.io/badge/Alpine_Linux-0D597F?style=for-the-badge&logo=alpine-linux&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)
![Samba](https://img.shields.io/badge/Samba-D32F2F?style=for-the-badge&logo=samba&logoColor=white)

</div>

---

## Overview

This image provides a minimal **Samba** (SMB/CIFS) server built on top of **Alpine Linux**. It is automatically rebuilt every Monday to track the latest Samba version available in the Alpine package registry, and published as a multi-architecture image.

## Quick Start

```bash
docker run -d \
  --name samba \
  -p 445:445 \
  -v samba:/download \
  neytor/samba
```

## Usage

### Docker CLI

```bash
docker pull neytor/samba:latest
docker run -d --name samba -p 445:445 -v samba:/download neytor/samba
```

### Docker Compose

```yaml
services:
  samba:
    container_name: samba
    image: neytor/samba:latest
    ports:
      - "445:445"
    volumes:
      - samba:/download
    restart: unless-stopped

volumes:
  samba:
```

## Supported Architectures

| Architecture | Tag |
|---|---|
| `linux/amd64` | `latest`, `<version>` |
| `linux/arm64` | `latest`, `<version>` |

Both architectures are built natively (no QEMU emulation) using GitHub-hosted runners.

## CI / CD Pipeline

The workflow runs automatically every Monday at 08:00 UTC and follows four stages:

| Phase | Job | Description |
|---|---|---|
| 1 | `check-version` | Detects the latest Samba version from Alpine and compares with the last GitHub Release |
| 2 | `build` | Builds per-arch images on native runners and pushes by digest |
| 3 | `build-and-push` | Merges digests into a single multi-arch manifest |
| 4 | `release` | Creates a GitHub Release with changelog fetched from samba.org |

You can also trigger a manual build via **Actions → Run workflow** with options to force a rebuild or skip release creation.

## Versioning

Image tags follow the Alpine package version of Samba (e.g., `4.19.6-r0`). The `latest` tag always points to the most recent build.

```bash
docker pull neytor/samba:latest
docker pull neytor/samba:4.19.6-r0
```

---

<div align="center">

Visit my website at [yonier.com](https://www.yonier.com)

</div>
