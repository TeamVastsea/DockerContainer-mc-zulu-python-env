# Docker Image with Zulu8 & Python3 Environment

## What's for?
- It's a Docker Image for setting up a Minecraft server(low edition like 1.8.9, 1.12.2, etc.) or other Applications which are also in need this environment.

## Environment
|      Name      |                              Link                               |
| :------------: | :-------------------------------------------------------------: |
|  Ubuntu-22.04  |         [[Click to Jump](https://releases.ubuntu.com/)]         |
| Zulu-8.72.0.17 |            [[Click to Jump](https://www.azul.com/)]             |
|  Python3-pip   |        [[Click to Jump](https://pypi.org/project/pip/)]         |
|  MCDReforged   | [[Click to Jump](https://github.com/Fallen-Breath/MCDReforged)] |

## Build and Run
```shell
make build
make run
make exec
```

## Docker Hub
- If you do not want to build it by yourself, you can **Directly** pull the Docker Image from Docker Hub[[Click to Jump]](https://hub.docker.com/r/vastsea/mc-zulu8-python3-env), or use the Docker Pull Command `docker pull vastsea/mc-zulu8-python3-env:latest` .
- If this Repository help you with conveniently setting up an environment, please star us in [Github](https://github.com/TeamVastsea/DockerContainer-mc-zulu-python-env) and [Docker Hub](https://hub.docker.com/r/vastsea/mc-zulu8-python3-env). Your support is our greatest motivation.

## Developers
- [wwxiaoqi](https://github.com/wwxiaoqi) & [Snowball_233](https://github.com/SnowballXueQiu)
- How about to follow them?

## Guess you like
- The `docker-compose.yaml` and `launch.sh` files for launch a Minecraft Server under this Docker Image. [[Click to Jump](https://github.com/TeamVastsea/DockerComposeFiles/tree/main/minecraft)]
