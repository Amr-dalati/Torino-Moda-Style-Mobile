# Android release signing

Phase **9.5** configures Gradle to use a local upload keystore when `android/key.properties` exists.  
No keystore files or passwords are stored in git.

**Related:** [RELEASE_BUILDS.md](./RELEASE_BUILDS.md) · [ENVIRONMENTS.md](./ENVIRONMENTS.md) · [PRODUCTION_BLOCKERS.md](./PRODUCTION_BLOCKERS.md)

---

## Current project state

| Item | Value |
|------|--------|
| **applicationId** | `com.example.torino_moda_style_f` |
| **namespace** | `com.example.torino_moda_style_f` |
| **versionName** | From `pubspec.yaml` (`version:` before `+`) |
| **versionCode** | From `pubspec.yaml` (number after `+`) |
| **Release signing** | Uses upload keystore when `android/key.properties` exists; otherwise **debug** keys (CI and local builds without secrets) |

Change `applicationId` only when you are ready to finalize the Play Console app identity (not required for Phase 9.5).

---

## What must never be committed

- `android/key.properties` (real passwords)
- `*.jks`, `*.keystore` (upload or upload-backup keystores)
- Keystore passwords in scripts, CI logs, or chat

**Safe to commit:** `android/key.properties.example` (placeholders only).

**Gitignore:** root `.gitignore` and `android/.gitignore` both exclude the above.

---

## 1. Generate an upload keystore (one-time, on your machine)

Requires **Java JDK** (`keytool` on your PATH).

From the Flutter project root (`torino-moda-style-f`):

**Linux / macOS / Git Bash:**

```bash
keytool -genkey -v \
  -keystore android/upload-keystore.jks \
  -keyalg RSA -keysize 2048 -validity 10000 \
  -alias upload \
  -storetype JKS
```

**Windows (PowerShell or CMD):**

```powershell
keytool -genkey -v `
  -keystore android\upload-keystore.jks `
  -keyalg RSA -keysize 2048 -validity 10000 `
  -alias upload `
  -storetype JKS
```

You will be prompted for:

- Keystore password (remember it — **storePassword**)
- Key password (often same as store — **keyPassword**)
- Name, organization, etc. (metadata for the certificate)

`android/upload-keystore.jks` is **gitignored**. Back it up offline (encrypted backup, password manager entry, team secret store). If you lose it and Play App Signing is not set up, you cannot update the app on Play with the same package.

---

## 2. Store the keystore safely

| Do | Don't |
|----|--------|
| Keep `upload-keystore.jks` outside git (default: `android/upload-keystore.jks`) | Commit `.jks` to GitHub |
| Back up keystore + passwords in a team vault | Email keystore or passwords |
| Use Play App Signing (recommended) and enroll upload key in Play Console | Share one developer laptop only |
| Document **alias** (`upload`) and file path for the team | Put passwords in `build.gradle` |

---

## 3. Create local `android/key.properties`

```bash
cp android/key.properties.example android/key.properties
```

Edit `android/key.properties` (local only):

```properties
storePassword=your_store_password
keyPassword=your_key_password
keyAlias=upload
storeFile=upload-keystore.jks
```

- `storeFile` is relative to the **`android/`** directory (same folder as `key.properties`).
- Property names must match exactly: `storePassword`, `keyPassword`, `keyAlias`, `storeFile`.

Gradle loads this file automatically; you do **not** pass passwords to `flutter build`.

---

## 4. Verify signing is active

After `key.properties` and the `.jks` file exist:

```bash
cd android
./gradlew :app:signingReport
```

On Windows:

```powershell
cd android
.\gradlew.bat :app:signingReport
```

Under `Variant: release`, confirm the config is **not** `debug` when `key.properties` is present.

---

## 5. Build staging APK

See [RELEASE_BUILDS.md](./RELEASE_BUILDS.md).

**With release signing** (`android/key.properties` present):

```bash
API_BASE_URL=https://staging-api.YOUR-DOMAIN.com/api ./scripts/build_staging_apk.sh
```

**Without `key.properties`:** build still succeeds; APK is signed with **debug** keys (fine for quick device tests, **not** for Play internal testing).

Optional Sentry:

```bash
SENTRY_DSN=https://...@sentry.io/... API_BASE_URL=https://staging-api.YOUR-DOMAIN.com/api ./scripts/build_staging_apk.sh
```

---

## 6. Build production AAB

**Requires** `android/key.properties` — the script fails fast if it is missing.

```bash
API_BASE_URL=https://api.YOUR-DOMAIN.com/api ./scripts/build_prod_aab.sh
```

Output: `build/app/outputs/bundle/release/app-release.aab`

Upload manually in [Google Play Console](https://play.google.com/console). This repo does **not** automate Play upload (Phase 9.5 scope).

---

## 7. Version and build number

Edit `pubspec.yaml`:

```yaml
version: 1.0.0+1
```

- `1.0.0` → Android `versionName`
- `+1` → Android `versionCode` — **increment for every Play upload**

Override for a single build:

```bash
flutter build appbundle --release --build-name=1.0.1 --build-number=2 \
  --dart-define=APP_ENV=prod \
  --dart-define=API_BASE_URL=https://api.YOUR-DOMAIN.com/api
```

Also update `lib/core/observability/app_release.dart` when you cut a release build for Sentry tagging.

---

## 8. Google Play App Signing (recommended)

1. Create the app in Play Console (same `applicationId` as Gradle).
2. Enable **Play App Signing**.
3. Upload the first AAB signed with your **upload** key (`upload-keystore.jks`).
4. Google holds the app signing key; you keep the upload key for future uploads.

Export upload certificate for enrollment (if Play asks):

```bash
keytool -export -rfc -alias upload -file android/upload_certificate.pem \
  -keystore android/upload-keystore.jks
```

---

## Troubleshooting

| Error | Likely cause | Fix |
|-------|----------------|-----|
| `Keystore file not found` | Wrong `storeFile` path | Path relative to `android/`; file exists |
| `Failed to read key … alias` | Wrong `keyAlias` | Match alias used in `keytool -genkey` |
| `Keystore was tampered with, or password was incorrect` | Wrong `storePassword` / `keyPassword` | Fix `key.properties` |
| Release build uses debug cert | No `key.properties` | Copy example → fill in; rebuild |
| `key.properties` missing (prod script) | Intentional guard | Create keystore + properties before AAB |
| CI fails on release | CI has no secrets | CI uses debug signing fallback; prod AAB is **local only** |
| `INSTALL_FAILED_UPDATE_INCOMPATIBLE` | Debug-signed APK over release-signed | Uninstall old app or match signing key |

---

## CI behavior

GitHub Actions runs `flutter analyze` and `flutter test` only — **no** `key.properties`, **no** release AAB in CI.  
Release `buildTypes.release` falls back to debug signing so `flutter build apk --release` does not break automation.

---

## Checklist before Play internal testing

- [ ] Upload keystore generated and backed up
- [ ] `android/key.properties` created locally (not committed)
- [ ] Staging APK built with **release** signing (`signingReport` verified)
- [ ] `API_BASE_URL` points to staging HTTPS API
- [ ] `pubspec.yaml` version/build incremented
- [ ] Play Console app created; internal testing track ready
- [ ] Privacy policy URL (store requirement) — see [PRODUCTION_BLOCKERS.md](./PRODUCTION_BLOCKERS.md)
