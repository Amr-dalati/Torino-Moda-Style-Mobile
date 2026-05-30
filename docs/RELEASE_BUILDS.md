# Release builds

Builds use **`dart-define`** for environment (`APP_ENV`, `API_BASE_URL`, optional `SENTRY_DSN`) and **`pubspec.yaml`** for version codes.

**Android signing:** [ANDROID_SIGNING.md](./ANDROID_SIGNING.md) — keystore, `key.properties`, Play upload key.

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
| Release | `--release` | QA APK, store AAB |

Release and profile builds enforce **HTTPS** when `APP_ENV` is `staging` or `prod`.

## Android signing behavior (Phase 9.5)

| File | Purpose |
|------|---------|
| `android/key.properties.example` | Committed template — copy to `key.properties` |
| `android/key.properties` | **Local only** — passwords and `storeFile` path |
| `android/upload-keystore.jks` | **Local only** — typical keystore location (gitignored) |

| Build | `key.properties` present | Signing |
|-------|--------------------------|---------|
| Staging APK | Yes | Upload / release keystore |
| Staging APK | No | Debug keys (build succeeds; not for Play) |
| Production AAB | **Required** | Script exits with error if missing |

See [ANDROID_SIGNING.md](./ANDROID_SIGNING.md) for `keytool` commands and troubleshooting.

## Staging APK (internal QA)

For sideload, manual device testing, or Play internal testing (with release signing).

**Linux / macOS / Git Bash:**

```bash
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

Optional Sentry (staging project DSN):

```bash
SENTRY_DSN=https://...@sentry.io/... API_BASE_URL=https://staging-api.YOUR-DOMAIN.com/api ./scripts/build_staging_apk.sh
```

## Production AAB (Google Play)

Google Play requires **AAB** for new apps.

**Requires** `android/key.properties` and a matching keystore file.

```bash
API_BASE_URL=https://api.YOUR-DOMAIN.com/api ./scripts/build_prod_aab.sh
```

**Windows:**

```powershell
$env:API_BASE_URL = "https://api.YOUR-DOMAIN.com/api"
.\scripts\build_prod_aab.ps1
```

**Manual command:**

```bash
flutter build appbundle --release \
  --dart-define=APP_ENV=prod \
  --dart-define=API_BASE_URL=https://api.YOUR-DOMAIN.com/api
```

**Output:** `build/app/outputs/bundle/release/app-release.aab`

Upload via [Google Play Console](https://play.google.com/console) (manual — not automated in this repo).

## iOS (overview — not in Phase 9.5)

When Apple Developer access is ready:

```bash
flutter build ipa --release \
  --dart-define=APP_ENV=prod \
  --dart-define=API_BASE_URL=https://api.YOUR-DOMAIN.com/api
```

Requires Xcode signing, bundle ID, and provisioning profiles.

## Pre-build checklist

- [ ] `API_BASE_URL` uses **HTTPS** for staging/prod
- [ ] URL ends with **`/api`**
- [ ] `APP_ENV` matches target (`staging` vs `prod`)
- [ ] Staging backend is deployed and reachable
- [ ] Version / build number bumped in `pubspec.yaml`
- [ ] For Play-bound builds: `android/key.properties` + keystore present ([ANDROID_SIGNING.md](./ANDROID_SIGNING.md))
- [ ] No secrets passed on the command line in CI logs (use secrets)

## Pre-upload checklist (production)

- [ ] QA sign-off on staging build ([QA_CHECKLIST.md](./QA_CHECKLIST.md))
- [ ] Release build tested against **production** API
- [ ] Privacy policy URL ready for store listing
- [ ] Upload keystore backed up; Play App Signing configured
- [ ] Production `SENTRY_DSN` in local build env if crash reporting enabled

## Never commit

- `android/key.properties`, `*.jks`, `*.keystore`
- iOS `.p12`, private provisioning profiles
- Production credentials in source or scripts

## Related docs

- [ANDROID_SIGNING.md](./ANDROID_SIGNING.md) — keystore generation and `key.properties`
- [ENVIRONMENTS.md](./ENVIRONMENTS.md) — dev/staging/prod rules
- [CI.md](./CI.md) — GitHub Actions (analyze/test only)
- [OBSERVABILITY.md](./OBSERVABILITY.md) — Sentry DSN
- [QA_CHECKLIST.md](./QA_CHECKLIST.md) — pre-release verification
- [INTERNAL_TESTING.md](./INTERNAL_TESTING.md) — tester install guide
- [RELEASE_READINESS.md](./RELEASE_READINESS.md) — promotion gates
- [PRODUCTION_BLOCKERS.md](./PRODUCTION_BLOCKERS.md) — remaining gates

## Continuous integration

Every push/PR to `main` runs analyze and tests. Release AAB/APK builds are **local** (signing secrets not in CI).

## Crash reporting

Staging/production builds can enable Sentry with `--dart-define=SENTRY_DSN=...`. See [OBSERVABILITY.md](./OBSERVABILITY.md).
