# Local development (Windows PowerShell)
#
# Override API URL:
#   $env:API_BASE_URL = "http://192.168.1.42:8000/api"
#   .\scripts\run_dev.ps1
#
# Android emulator → host machine:
#   $env:API_BASE_URL = "http://10.0.2.2:8000/api"
#   .\scripts\run_dev.ps1

$ErrorActionPreference = "Stop"
Set-Location (Join-Path $PSScriptRoot "..")

if (-not $env:API_BASE_URL) {
  $env:API_BASE_URL = "http://127.0.0.1:8000/api"
}

Write-Host "Running dev (APP_ENV=dev, API_BASE_URL=$($env:API_BASE_URL))"

flutter run `
  --dart-define=APP_ENV=dev `
  --dart-define="API_BASE_URL=$($env:API_BASE_URL)" `
  @args
