#!/bin/bash

start_containers() {
    podman compose up -d
}

stop_containers() {
    podman compose down
}

stop_containers_and_volumes() {
    podman compose down --volumes
}

reset_podman() {
    podman system prune -a --volumes
}

remove_resources() {
    podman rm -f $(podman ps -a -q)
    podman network rm $(podman network ls -q)
    podman volume rm $(podman volume ls -q)
}