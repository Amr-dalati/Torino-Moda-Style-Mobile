# Environments

Torino Moda Style Flutter app uses **compile-time** configuration via `--dart-define`. No flavors are configured in Phase 9.1.

## Defines

| Define | Values | Default | Purpose |
|--------|--------|---------|---------|
| `APP_ENV` | `dev`, `staging`, `prod` | `dev` | Deployment environment label and validation rules |
| `API_BASE_URL` | Full API root URL | `http://127.0.0.1:8000/api` | Backend base URL **including `/api`** |
| `SENTRY_DSN` | Sentry project DSN | _(empty)_ | Crash reporting; see [OBSERVABILITY.md](./OBSERVABILITY.md) |

### Examples

```bash
# Local development (defaults)
flutter run

# Explicit dev
flutter run \
  --dart-define=APP_ENV=dev \
  --dart-define=API_BASE_URL=http://127.0.0.1:8000/api

# Staging
flutter run \
  --dart-define=APP_ENV=staging \
  --dart-define=API_BASE_URL=https://staging-api.example.com/api

# Production (release builds)
flutter build appbundle --release \
  --dart-define=APP_ENV=prod \
  --dart-define=API_BASE_URL=https://api.example.com/api
```

Replace `example.com` with your real domain before any QA or store upload.

## HTTPS rules

| APP_ENV | HTTP allowed? | HTTPS required? |
|---------|---------------|-----------------|
| `dev` | Yes, for **localhost**, **127.0.0.1**, **10.0.2.2**, or **private LAN** IPs only | No |
| `staging` | **Never** | Yes |
| `prod` | **Never** | Yes |

### Build-mode behavior

| Mode | Invalid config |
|------|----------------|
| **Debug** + `APP_ENV=dev` + allowed HTTP host | Warning printed; app runs |
| **Profile / Release** + `APP_ENV=staging` or `prod` + `http://` | **Hard fail** at startup |
| **Profile / Release** + `APP_ENV=dev` + allowed HTTP host | Allowed (internal LAN QA builds) |
| Any mode + public host over HTTP | **Hard fail** |

Validation runs in `bootstrap()` before the widget tree is built.

## Running locally

### Scripts (recommended)

**Linux / macOS / Git Bash:**

```bash
./scripts/run_dev.sh
API_BASE_URL=http://192.168.1.42:8000/api ./scripts/run_dev.sh
./scripts/run_staging.sh
```

**Windows PowerShell:**

```powershell
.\scripts\run_dev.ps1
$env:API_BASE_URL = "http://192.168.1.42:8000/api"
.\scripts\run_dev.ps1
```

### Android emulator → host machine

The emulator cannot reach `127.0.0.1` on your PC. Use **`10.0.2.2`**:

```bash
API_BASE_URL=http://10.0.2.2:8000/api ./scripts/run_dev.sh
```

Ensure Laravel (or your API) listens on `0.0.0.0:8000`, not only `127.0.0.1`.

### Physical device (same Wi‑Fi)

1. Find your machine's LAN IP (e.g. `192.168.1.42`).
2. Start the API bound to all interfaces.
3. Run:

```bash
API_BASE_URL=http://192.168.1.42:8000/api ./scripts/run_dev.sh
```

Use your machine's firewall rules to allow port **8000** from the local network only.

### iOS Simulator

`127.0.0.1` usually works:

```bash
flutter run --dart-define=APP_ENV=dev --dart-define=API_BASE_URL=http://127.0.0.1:8000/api
```

## API URL contract

`API_BASE_URL` must:

- Include scheme and host
- End with `/api` (e.g. `https://api.example.com/api`)

The app appends resource paths such as `/products` to this base URL via Dio.

## What must NOT be committed

- Real production or staging URLs with secrets in tracked files (use env vars / CI secrets)
- Keystores (`.jks`, `.keystore`), `key.properties`
- iOS certificates / provisioning profiles with private keys
- `.env` files containing credentials
- API tokens, Sentry DSN (future phases)

Scripts in `scripts/` use **placeholder** `example.com` domains only.

## Related docs

- [RELEASE_BUILDS.md](./RELEASE_BUILDS.md) — staging APK and production AAB commands
- [OBSERVABILITY.md](./OBSERVABILITY.md) — Sentry DSN and privacy rules
- [QA_CHECKLIST.md](./QA_CHECKLIST.md) — feature verification before release
- [RELEASE_READINESS.md](./RELEASE_READINESS.md) — promotion gates
- [README.md](./README.md) — documentation index
