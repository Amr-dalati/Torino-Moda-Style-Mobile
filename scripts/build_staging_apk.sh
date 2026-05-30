#!/usr/bin/env bash
# Release APK for internal QA / sideload (staging).
#
# Replace placeholder URL:
#   API_BASE_URL=https://staging-api.YOUR-DOMAIN.com/api ./scripts/build_staging_apk.sh

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

API_BASE_URL="${API_BASE_URL:-https://staging-api.example.com/api}"

if [[ "$API_BASE_URL" == *"example.com"* ]]; then
  echo "WARNING: Replace staging-api.example.com with your real staging API host." >&2
fi

echo "Building staging release APK (APP_ENV=staging, API_BASE_URL=$API_BASE_URL)"

flutter build apk --release \
  --dart-define=APP_ENV=staging \
  --dart-define="API_BASE_URL=$API_BASE_URL" \
  --dart-define="SENTRY_DSN=${SENTRY_DSN:-}"

echo "Output: build/app/outputs/flutter-apk/app-release.apk"
