#!/usr/bin/env bash
# Local development — HTTP allowed for localhost / LAN when APP_ENV=dev.
#
# Override API URL (e.g. physical device on same Wi‑Fi):
#   API_BASE_URL=http://192.168.1.42:8000/api ./scripts/run_dev.sh
#
# Android emulator → host machine Laravel:
#   API_BASE_URL=http://10.0.2.2:8000/api ./scripts/run_dev.sh

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

API_BASE_URL="${API_BASE_URL:-http://127.0.0.1:8000/api}"

echo "Running dev (APP_ENV=dev, API_BASE_URL=$API_BASE_URL)"

flutter run \
  --dart-define=APP_ENV=dev \
  --dart-define="API_BASE_URL=$API_BASE_URL" \
  "$@"
