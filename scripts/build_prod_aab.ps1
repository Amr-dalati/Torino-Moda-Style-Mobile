# Production release AAB for Google Play (Windows PowerShell, manual upload)
#
#   $env:API_BASE_URL = "https://api.YOUR-DOMAIN.com/api"
#   .\scripts\build_prod_aab.ps1
#
# Requires android/key.properties — see docs/ANDROID_SIGNING.md

$ErrorActionPreference = "Stop"
Set-Location (Join-Path $PSScriptRoot "..")

$keyProps = Join-Path (Get-Location) "android\key.properties"

if (-not (Test-Path $keyProps)) {
  Write-Error @"
ERROR: android/key.properties not found.

Production AAB must be signed with your upload keystore.
  1. Generate keystore: docs/ANDROID_SIGNING.md
  2. Copy android/key.properties.example to android/key.properties
  3. Edit key.properties with your passwords and storeFile path
"@
}

if (-not $env:API_BASE_URL) {
  $env:API_BASE_URL = "https://api.example.com/api"
}

if ($env:API_BASE_URL -like "*example.com*") {
  Write-Warning "Replace api.example.com with your production API host."
}

Write-Host "Building production release AAB (APP_ENV=prod, API_BASE_URL=$($env:API_BASE_URL))"
Write-Host "Release signing: android/key.properties"

$sentryDsn = if ($env:SENTRY_DSN) { $env:SENTRY_DSN } else { "" }

flutter build appbundle --release `
  --dart-define=APP_ENV=prod `
  --dart-define="API_BASE_URL=$($env:API_BASE_URL)" `
  --dart-define="SENTRY_DSN=$sentryDsn"

Write-Host "Output: build\app\outputs\bundle\release\app-release.aab"
