#!/usr/bin/env bash
# Production release AAB for Google Play (manual upload).
#
# Replace placeholder URL before store upload:
#   API_BASE_URL=https://api.YOUR-DOMAIN.com/api ./scripts/build_prod_aab.sh
#
# Requires android/key.properties — see docs/ANDROID_SIGNING.md

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

KEY_PROPS="$ROOT/android/key.properties"

if [[ ! -f "$KEY_PROPS" ]]; then
  echo "ERROR: android/key.properties not found." >&2
  echo "" >&2
  echo "Production AAB must be signed with your upload keystore." >&2
  echo "  1. Generate keystore: docs/ANDROID_SIGNING.md" >&2
  echo "  2. cp android/key.properties.example android/key.properties" >&2
  echo "  3. Edit key.properties with your passwords and storeFile path" >&2
  exit 1
fi

API_BASE_URL="${API_BASE_URL:-https://api.example.com/api}"

if [[ "$API_BASE_URL" == *"example.com"* ]]; then
  echo "WARNING: Replace api.example.com with your production API host." >&2
fi

echo "Building production release AAB (APP_ENV=prod, API_BASE_URL=$API_BASE_URL)"
echo "Release signing: android/key.properties"

flutter build appbundle --release \
  --dart-define=APP_ENV=prod \
  --dart-define="API_BASE_URL=$API_BASE_URL" \
  --dart-define="SENTRY_DSN=${SENTRY_DSN:-}"

echo "Output: build/app/outputs/bundle/release/app-release.aab"
