# Release builds

Phase 9.1 uses **`dart-define` + scripts** only. Android/iOS flavors and store signing are not configured yet.

## Versioning

Set in `pubspec.yaml`:

```yaml
version: 1.0.0+1
```

- `1.0.0` → user-visible version (`versionName` / `CFBundleShortVersionString`)
- `+1` → build number (`versionCode` / `CFBundleVersion`) — increment for every store upload

Override at build time:

```bash
flutter build appbundle --release --build-name=1.0.0 --build-number=2 ...
```

## Build modes

| Mode | Command flag | Use |
|------|--------------|-----|
| Debug | default `flutter run` | Daily development |
| Profile | `--profile` | Performance profiling |
| Release | `--release` | QA APK, store AAB/IPA |

Release and profile builds enforce **HTTPS** when `APP_ENV` is `staging` or `prod`.

## Staging APK (internal QA)

For sideload, Firebase App Distribution, or manual device testing.

**Linux / macOS / Git Bash:**

```bash
# Replace domain first
API_BASE_URL=https://staging-api.YOUR-DOMAIN.com/api ./scripts/build_staging_apk.sh
```

**Windows PowerShell:**

```powershell
$env:API_BASE_URL = "https://staging-api.YOUR-DOMAIN.com/api"
.\scripts\build_staging_apk.ps1
```

**Manual command:**

```bash
flutter build apk --release \
  --dart-define=APP_ENV=staging \
  --dart-define=API_BASE_URL=https://staging-api.YOUR-DOMAIN.com/api
```

**Output:** `build/app/outputs/flutter-apk/app-release.apk`

Install on device:

```bash
adb install build/app/outputs/flutter-apk/app-release.apk
```

## Production AAB (Google Play)

Google Play requires **AAB** for new apps (not APK).

```bash
API_BASE_URL=https://api.YOUR-DOMAIN.com/api ./scripts/build_prod_aab.sh
```

**Manual command:**

```bash
flutter build appbundle --release \
  --dart-define=APP_ENV=prod \
  --dart-define=API_BASE_URL=https://api.YOUR-DOMAIN.com/api
```

**Output:** `build/app/outputs/bundle/release/app-release.aab`

Upload via [Google Play Console](https://play.google.com/console).

## iOS (overview — not automated in 9.1)

When Apple Developer access is ready:

```bash
flutter build ipa --release \
  --dart-define=APP_ENV=prod \
  --dart-define=API_BASE_URL=https://api.YOUR-DOMAIN.com/api
```

Requires Xcode signing, bundle ID, and provisioning profiles. See Apple docs for TestFlight distribution.

## Pre-build checklist

- [ ] `API_BASE_URL` uses **HTTPS** for staging/prod
- [ ] URL ends with **`/api`**
- [ ] `APP_ENV` matches target (`staging` vs `prod`)
- [ ] Staging backend is deployed and reachable
- [ ] Version / build number bumped in `pubspec.yaml`
- [ ] No secrets passed on the command line in CI logs (use secrets)

## Pre-upload checklist (production)

- [ ] QA sign-off on staging build (see Phase 9 planning QA list)
- [ ] Release build tested against **production** API (or production-like)
- [ ] Privacy policy URL ready for store listing
- [ ] Signing keystore secured (not in git)

## Signing (deferred)

Release signing is **not** configured in Phase 9.1. Before Play Store upload you will need:

| Platform | Requirement |
|----------|-------------|
| Android | Upload keystore + `key.properties` (gitignored) or Play App Signing |
| iOS | Distribution certificate + App Store provisioning profile |

## Never commit

- `*.jks`, `*.keystore`, `key.properties`
- iOS `.p12`, private provisioning profiles
- Production `API_BASE_URL` embedded in source code
- Passwords or API keys in scripts

## Related docs

- [ENVIRONMENTS.md](./ENVIRONMENTS.md) — dev/staging/prod rules and local run commands
