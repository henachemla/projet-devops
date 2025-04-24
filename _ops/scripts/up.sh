#! /usr/bin/env bash
set -euo pipefail
readonly FILE_PATH="$(realpath ${BASH_SOURCE})"
readonly CURRENT_DIR="$(dirname ${FILE_PATH})"
readonly OPS_DIRECTORY="$(realpath ${CURRENT_DIR}/..)"

docker compose -f "${OPS_DIRECTORY}"/docker-compose.yml -p "projet-devops" up -d --build