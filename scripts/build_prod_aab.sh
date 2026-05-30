#!/usr/bin/env bash
# Production release AAB for Google Play.
#
# Replace placeholder URL before store upload:
#   API_BASE_URL=https://api.YOUR-DOMAIN.com/api ./scripts/build_prod_aab.sh
#
# Requires release signing configured separately (not in this script).

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

API_BASE_URL="${API_BASE_URL:-https://api.example.com/api}"

if [[ "$API_BASE_URL" == *"example.com"* ]]; then
  echo "WARNING: Replace api.example.com with your production API host." >&2
fi

echo "Building production release AAB (APP_ENV=prod, API_BASE_URL=$API_BASE_URL)"

flutter build appbundle --release \
  --dart-define=APP_ENV=prod \
  --dart-define="API_BASE_URL=$API_BASE_URL"

echo "Output: build/app/outputs/bundle/release/app-release.aab"
