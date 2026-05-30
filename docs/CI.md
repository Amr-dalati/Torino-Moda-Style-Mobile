# Continuous Integration (CI)

GitHub Actions runs automated checks on every push and pull request targeting `main`.

Workflow file: [`.github/workflows/ci.yml`](../.github/workflows/ci.yml)

## What CI checks

| Step | Purpose |
|------|---------|
| `flutter pub get` | Resolve dependencies |
| `dart run build_runner build --delete-conflicting-outputs` | Regenerate Riverpod/Freezed/json code; fail if out of sync |
| `flutter gen-l10n` | Regenerate localization from ARB files |
| `flutter analyze` | Static analysis (must be clean) |
| `flutter test` | Unit and widget tests (must pass) |

CI does **not** build release APK/AAB, sign artifacts, or call staging/production APIs.

## When it runs

- **Push** to `main`
- **Pull request** into `main`
- **Manual** run via **Actions → CI → Run workflow** (`workflow_dispatch`)

Concurrent runs on the same branch are cancelled when a newer commit is pushed.

## Run the same commands locally

From the repository root (`torino-moda-style-f`):

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter gen-l10n
flutter analyze
flutter test
```

On Windows PowerShell, use the same commands from the project directory.

## Repository layout assumption

This workflow assumes **`pubspec.yaml` is at the repository root**.

If the Flutter app lives inside a parent monorepo (e.g. `Torino-Moda-Style/torino-moda-style-f/`), update `.github/workflows/ci.yml`:

```yaml
defaults:
  run:
    working-directory: torino-moda-style-f
```

Place the workflow at the **monorepo root** (`.github/workflows/` in the parent repo) or keep it here and set `working-directory` as above when workflows are triggered from the parent.

## Branch protection (recommended)

On GitHub, for the `main` branch:

1. **Settings → Branches → Add rule**
2. Require status check: **Analyze & Test** (job name from CI)
3. Require pull request reviews before merge (optional but recommended)
4. Do not allow bypassing for administrators (optional)

This prevents merging when analyze or tests fail.

## What CI does not include (yet)

| Deferred | Phase |
|----------|-------|
| Release APK/AAB builds | 9.5 |
| Signing / keystore secrets | 9.5 |
| Sentry symbol upload | 9.4+ |
| `SENTRY_DSN` secrets | Release workflows only (app runs without DSN in PR CI) |

Release builds need `--dart-define` values and signing material that must not run on every PR.

## Caching

CI uses Flutter action built-in caching (`cache: true`) for the SDK and pub packages, keyed from `pubspec.lock`. Codegen outputs are **not** cached — each run regenerates them to catch drift.

## Related docs

- [ENVIRONMENTS.md](./ENVIRONMENTS.md) — `APP_ENV` and `API_BASE_URL`
- [RELEASE_BUILDS.md](./RELEASE_BUILDS.md) — manual staging/production builds
- [OBSERVABILITY.md](./OBSERVABILITY.md) — Sentry setup (optional; not required for PR CI)
- [QA_CHECKLIST.md](./QA_CHECKLIST.md) — pre-release verification
- [README.md](./README.md) — documentation index
