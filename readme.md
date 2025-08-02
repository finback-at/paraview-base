# paraview-base

Base image of ParaView build with Python 3.13

## Docker Images

```text
python:3-11-13-bookworm (official)
  | Debian 12 (Bookworm)
  | Python 3.11.13
  |     
paraview-base ---------- paraview-user
  | ParaView 6.0.0           host graphics env.
  |   buid with                UID: 1000
  | Python 3.11.13             GID: 1000
  |
openfoam-base ---------- openfoam-user
  | Gnupot                   host graphics env.
  | OpenFOAM 2506              UID:1000
  | PyFOAM                     GID:1000
  | JupyterLab
  | 
  |
```

## Build Image

Software

* Ubuntu 24.04.2 LTS
* nvidia-container-toolkit 1.17.8-1 amd64
* Docker 28.3.1
* Docker Compose v2.38.1

My Hard Ware

* Intel(R) Xeon(R) E5-2650 v3 @ 2.30GHz x 2
* NVIDIA GeForce GTX 960

How to Build

```bash
docker compose build
```

Reference

* [UbuntuにNVIDIA DriverとCUDA, Dockerをインストールして機械学習サーバを構築する](https://zenn.dev/mjun0812/articles/3694944ed3a588)
* [Building ParaView](https://www.paraview.org/paraview-docs/latest/cxx/md__builds_gitlab-kitware-sciviz-ci_Documentation_dev_build.html)
