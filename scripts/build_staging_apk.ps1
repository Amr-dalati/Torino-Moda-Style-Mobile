# Staging release APK for internal QA (Windows PowerShell)
#
# Replace placeholder before use:
#   $env:API_BASE_URL = "https://staging-api.YOUR-DOMAIN.com/api"
#   .\scripts\build_staging_apk.ps1
#
# Signing: if android/key.properties exists, uses upload keystore; otherwise debug keys.
# See docs/ANDROID_SIGNING.md

$ErrorActionPreference = "Stop"
Set-Location (Join-Path $PSScriptRoot "..")

$keyProps = Join-Path (Get-Location) "android\key.properties"

if (-not $env:API_BASE_URL) {
  $env:API_BASE_URL = "https://staging-api.example.com/api"
}

if ($env:API_BASE_URL -like "*example.com*") {
  Write-Warning "Replace staging-api.example.com with your real staging API host."
}

if (Test-Path $keyProps) {
  Write-Host "Release signing: android/key.properties found (upload keystore)."
} else {
  Write-Warning "android/key.properties not found — APK will use DEBUG signing."
  Write-Warning "OK for quick local tests; create key.properties for Play internal testing."
  Write-Warning "See docs/ANDROID_SIGNING.md"
}

Write-Host "Building staging release APK (APP_ENV=staging, API_BASE_URL=$($env:API_BASE_URL))"

$sentryDsn = if ($env:SENTRY_DSN) { $env:SENTRY_DSN } else { "" }

flutter build apk --release `
  --dart-define=APP_ENV=staging `
  --dart-define="API_BASE_URL=$($env:API_BASE_URL)" `
  --dart-define="SENTRY_DSN=$sentryDsn"

Write-Host "Output: build\app\outputs\flutter-apk\app-release.apk"
