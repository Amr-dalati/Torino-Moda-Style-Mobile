# Staging release APK for internal QA (Windows PowerShell)
#
# Replace placeholder before use:
#   $env:API_BASE_URL = "https://staging-api.YOUR-DOMAIN.com/api"
#   .\scripts\build_staging_apk.ps1

$ErrorActionPreference = "Stop"
Set-Location (Join-Path $PSScriptRoot "..")

if (-not $env:API_BASE_URL) {
  $env:API_BASE_URL = "https://staging-api.example.com/api"
}

if ($env:API_BASE_URL -like "*example.com*") {
  Write-Warning "Replace staging-api.example.com with your real staging API host."
}

Write-Host "Building staging release APK (APP_ENV=staging, API_BASE_URL=$($env:API_BASE_URL))"

flutter build apk --release `
  --dart-define=APP_ENV=staging `
  --dart-define="API_BASE_URL=$($env:API_BASE_URL)"

Write-Host "Output: build\app\outputs\flutter-apk\app-release.apk"
