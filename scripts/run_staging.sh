#!/usr/bin/env bash
# Staging debug run — HTTPS required.
#
# Replace the placeholder domain before use:
#   API_BASE_URL=https://staging-api.YOUR-DOMAIN.com/api ./scripts/run_staging.sh

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

API_BASE_URL="${API_BASE_URL:-https://staging-api.example.com/api}"

if [[ "$API_BASE_URL" == *"example.com"* ]]; then
  echo "WARNING: Replace staging-api.example.com with your real staging API host." >&2
fi

echo "Running staging (APP_ENV=staging, API_BASE_URL=$API_BASE_URL)"

flutter run \
  --dart-define=APP_ENV=staging \
  --dart-define="API_BASE_URL=$API_BASE_URL" \
  "$@"
