# paraview-base

Build up paraview-base image.

See [paraview-user](https://github.com/finback-at/paraview-user) to use this image.

- Python 3.11.13
- ParaView 6.0.0

## Docker Images

```text
python:3-11-13-bookworm (official)
  | Debian 12 (Bookworm)
  | Python 3.11.13
  |     
paraview-base ---------- paraview-user
  | ParaView 6.0.0           graphic capabilities
  |   buid with                default UID: 1000
  | Python 3.11.13                     GID: 1000
  |
openfoam-base ---------- openfoam-user
  | Gnupot 5.4                 graphic capabiliteis
  | OpenFOAM 2506              default UID:1000
  | PyFOAM 2023.7                      GID:1000
  | JupyterLab 4.4.4
  | 
  |
```

## My Build Environment

Hardware

- Intel(R) Xeon(R) E5-2650 v3 @ 2.30GHz x 2
- NVIDIA GeForce GTX 960

Software

- Ubuntu 24.04.2 LTS
- nvidia-container-toolkit 1.17.8-1 amd64
- Docker 28.3.1
- Docker Compose v2.38.1

## How to Build

```bash
docker compose build
```

## Reference

- [UbuntuにNVIDIA DriverとCUDA, Dockerをインストールして機械学習サーバを構築する](https://zenn.dev/mjun0812/articles/3694944ed3a588)
- [Building ParaView](https://www.paraview.org/paraview-docs/latest/cxx/md__builds_gitlab-kitware-sciviz-ci_Documentation_dev_build.html)
