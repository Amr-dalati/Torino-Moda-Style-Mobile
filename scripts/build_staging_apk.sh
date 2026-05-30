#!/usr/bin/env bash
# Release APK for internal QA / sideload (staging).
#
# Replace placeholder URL:
#   API_BASE_URL=https://staging-api.YOUR-DOMAIN.com/api ./scripts/build_staging_apk.sh
#
# Signing: if android/key.properties exists, uses upload keystore; otherwise debug keys.
# See docs/ANDROID_SIGNING.md

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

KEY_PROPS="$ROOT/android/key.properties"

API_BASE_URL="${API_BASE_URL:-https://staging-api.example.com/api}"

if [[ "$API_BASE_URL" == *"example.com"* ]]; then
  echo "WARNING: Replace staging-api.example.com with your real staging API host." >&2
fi

if [[ -f "$KEY_PROPS" ]]; then
  echo "Release signing: android/key.properties found (upload keystore)."
else
  echo "NOTE: android/key.properties not found — APK will use DEBUG signing." >&2
  echo "      OK for quick local tests; create key.properties for Play internal testing." >&2
  echo "      See docs/ANDROID_SIGNING.md" >&2
fi

echo "Building staging release APK (APP_ENV=staging, API_BASE_URL=$API_BASE_URL)"

flutter build apk --release \
  --dart-define=APP_ENV=staging \
  --dart-define="API_BASE_URL=$API_BASE_URL" \
  --dart-define="SENTRY_DSN=${SENTRY_DSN:-}"

echo "Output: build/app/outputs/flutter-apk/app-release.apk"
