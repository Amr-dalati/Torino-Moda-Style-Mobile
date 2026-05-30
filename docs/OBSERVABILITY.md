# Observability (Sentry)

Crash and selected non-fatal error reporting via [Sentry](https://sentry.io) for **staging** and **production** builds.

## Enable / disable rules

| APP_ENV | SENTRY_DSN | Sentry |
|---------|------------|--------|
| `dev` | any | **Off** (always) |
| `staging` | empty | Off + startup warning |
| `staging` | set | **On** |
| `prod` | empty | Off + startup warning |
| `prod` | set | **On** |

Never commit a real DSN to source control.

## Passing configuration

```bash
flutter run \
  --dart-define=APP_ENV=staging \
  --dart-define=API_BASE_URL=https://staging-api.YOUR-DOMAIN.com/api \
  --dart-define=SENTRY_DSN=https://YOUR_KEY@oORG.ingest.sentry.io/PROJECT

flutter build apk --release \
  --dart-define=APP_ENV=staging \
  --dart-define=API_BASE_URL=https://staging-api.YOUR-DOMAIN.com/api \
  --dart-define=SENTRY_DSN=https://YOUR_KEY@oORG.ingest.sentry.io/PROJECT
```

Use a **staging Sentry project** for internal builds and a **separate production project** for store releases.

## Privacy and redaction

Configured in code (`lib/core/observability/`):

- `sendDefaultPii = false`
- No screenshots or view hierarchy attachments
- `beforeSend` / `beforeBreadcrumb` redact:
  - `Authorization`, cookies, API keys in headers
  - Keys containing: `token`, `password`, `phone`, `email`, `name`, `address`, `customer`

### Safe context (allowed)

- `APP_ENV` (Sentry `environment`)
- App release (`torino_moda_style_f@1.0.0+1`)
- Feature tags: `checkout`, `orders`, etc.
- Error type (`ServerError`, `UnknownError`, …)
- Order id (numeric id only)

### Do not report

- Validation errors
- Wrong password / 401 / 403
- Expected 404 (product not found)
- Rate limiting (429)
- Routine network/timeout errors
- Payment URLs or PII in messages

### Non-fatal events reported today

| Event | Feature tag |
|-------|-------------|
| Checkout submit `ServerError` / `UnknownError` | `checkout` |
| Invalid payment URL | `checkout` (`payment_url_invalid`) |
| Payment URL could not open | `checkout` (`payment_url_launch_failed`) |

## Testing in staging

1. Create a Sentry project for staging.
2. Build/run with `APP_ENV=staging` and `SENTRY_DSN` set.
3. Trigger a **staging-only** test (do not ship test buttons to production):
   - Option A: temporarily throw in a debug-only code path (remove before release).
   - Option B: use Sentry’s “Test error” from a one-off internal screen.
4. Confirm event appears with:
   - `environment: staging`
   - Correct `release`
   - No `Authorization` header or phone/email in payload

## GitHub secrets (future CI / release workflows)

Not required for PR CI. For a future release workflow:

| Secret | Purpose |
|--------|---------|
| `SENTRY_DSN_STAGING` | Staging internal builds |
| `SENTRY_DSN_PROD` | Production builds |
| `SENTRY_AUTH_TOKEN` | Symbol/source map upload (Phase 9.4+) |

PR CI runs **without** any Sentry secrets.

## Symbol upload

Deferred. Release builds will show obfuscated Dart stacks until `sentry_dart_plugin` or CI upload is added.

## Related docs

- [ENVIRONMENTS.md](./ENVIRONMENTS.md)
- [RELEASE_BUILDS.md](./RELEASE_BUILDS.md)
- [CI.md](./CI.md)
- [INTERNAL_TESTING.md](./INTERNAL_TESTING.md) — verify Sentry on staging device
- [README.md](./README.md)
