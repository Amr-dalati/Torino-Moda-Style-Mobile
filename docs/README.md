# Torino Moda Style — Documentation Index

Release preparation flow:

```
QA_CHECKLIST.md  →  INTERNAL_TESTING.md  →  Closed Beta  →  RELEASE_READINESS.md
                              ↓
                    DEVICE_TEST_MATRIX.md
                    RISK_REGISTER.md
                    PRODUCTION_BLOCKERS.md
```

## Release & quality

| Document | Purpose |
|----------|---------|
| [QA_CHECKLIST.md](./QA_CHECKLIST.md) | Feature-by-feature verification checklist |
| [INTERNAL_TESTING.md](./INTERNAL_TESTING.md) | How testers install, test, and report bugs |
| [RELEASE_READINESS.md](./RELEASE_READINESS.md) | Gates before internal / beta / production |
| [PRODUCTION_BLOCKERS.md](./PRODUCTION_BLOCKERS.md) | What blocks production vs beta |
| [RISK_REGISTER.md](./RISK_REGISTER.md) | Known risks, severity, mitigation |
| [DEVICE_TEST_MATRIX.md](./DEVICE_TEST_MATRIX.md) | Device and network coverage |

## Build & environment

| Document | Purpose |
|----------|---------|
| [ENVIRONMENTS.md](./ENVIRONMENTS.md) | `APP_ENV`, `API_BASE_URL`, HTTPS rules |
| [RELEASE_BUILDS.md](./RELEASE_BUILDS.md) | Staging APK, production AAB commands |
| [ANDROID_SIGNING.md](./ANDROID_SIGNING.md) | Upload keystore and `key.properties` |
| [CI.md](./CI.md) | GitHub Actions quality pipeline |
| [OBSERVABILITY.md](./OBSERVABILITY.md) | Sentry setup and privacy |
