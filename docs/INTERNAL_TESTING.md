# Internal Testing Guide

For QA engineers and stakeholders testing **staging** builds before closed beta.

**Prerequisites docs:** [QA_CHECKLIST.md](./QA_CHECKLIST.md) · [ENVIRONMENTS.md](./ENVIRONMENTS.md) · [RELEASE_BUILDS.md](./RELEASE_BUILDS.md) · [DEVICE_TEST_MATRIX.md](./DEVICE_TEST_MATRIX.md)

---

## Tester prerequisites

- Android device (primary) or iOS device (if TestFlight build available)
- Ability to install APK (Android) or TestFlight invite (iOS)
- Staging API reachable from device network (VPN if required)
- Test account credentials (see below)
- Optional: second device for account-switch tests

---

## Installation (Android)

1. Obtain **staging release APK** from the team (CI artifact or `scripts/build_staging_apk.sh` output).
2. Enable **Install unknown apps** for the file manager or browser used to open the APK.
3. Install `app-release.apk`.
4. Confirm app name and version in system settings match the build sheet.

**Build must use:**

- `APP_ENV=staging`
- `API_BASE_URL=https://staging-api.YOUR-DOMAIN.com/api` (HTTPS)
- `SENTRY_DSN=...` (recommended for crash capture)

---

## Installation (iOS)

iOS internal testing requires **TestFlight** or ad hoc provisioning (not automated in repo yet). Contact the mobile lead for an invite.

---

## Test accounts strategy

| Account type | Purpose | Notes |
|--------------|---------|-------|
| **Primary QA** | Full regression | Dedicated phone number; do not use personal production account |
| **Secondary QA** | Logout / multi-user (A6, N2) | Different phone number |
| **Fresh register** | Registration flow (A1) | Use disposable test numbers per backend policy |
| **Admin-coordinated** | Token expiry (A6) | Backend admin revokes token or short TTL |

**Rules:**

- Do not test against **production** API with real customer data unless explicitly authorized.
- Reset passwords via backend/admin if accounts lock out.
- Document which phone numbers are assigned to which tester.

---

## What to test

1. Work through [QA_CHECKLIST.md](./QA_CHECKLIST.md) in order.
2. Cover devices listed in [DEVICE_TEST_MATRIX.md](./DEVICE_TEST_MATRIX.md).
3. Run at least one full **checkout → payment URL → order detail** flow on a **physical device**.

---

## Bug reporting format

Use your issue tracker (GitHub Issues, Jira, etc.) with this template:

```markdown
## Summary
One-line description

## Environment
- App version: 1.0.0+2
- APP_ENV: staging
- Device: Samsung Galaxy A54 / Android 14
- Locale: ar_EG
- API host: staging-api.example.com (no secrets)

## Steps to reproduce
1.
2.
3.

## Expected
What should happen

## Actual
What happened

## Severity
- [ ] S0 Blocker (crash, data loss, cannot pay)
- [ ] S1 Critical (major flow broken)
- [ ] S2 Major (workaround exists)
- [ ] S3 Minor (cosmetic)

## Evidence
Screenshots / screen recording / Sentry event link (if available)

## Logs
Paste relevant log lines only — never paste passwords or tokens
```

**Severity guide:**

| Level | Examples |
|-------|----------|
| S0 | Crash on launch, checkout creates duplicate charge, session leak |
| S1 | Cannot login, cart empty after add, payment never updates |
| S2 | Wrong label, slow list, retry needed |
| S3 | Alignment, typo |

---

## Screenshot and video guidelines

**Do include:**

- Full screen showing app version (Profile or about if available)
- Error messages and snackbars
- Order number (not full payment card data)
- Device status bar (time, network icon) for network issues

**Do not include:**

- Passwords, OTPs, auth tokens
- Full payment URLs with sensitive query parameters (crop or redact)
- Other customers’ PII from admin panels

Prefer **screen recording** for navigation bugs and polling behavior.

---

## Device coverage recommendations

Minimum for **internal sign-off:**

- 1 × Android 12–14 phone (mid-range)
- 1 × Android 10–11 or emulator for regression
- 1 × physical device for payment URL (CH8)

Recommended before **closed beta:**

- Small screen phone (≤ 5.5")
- Large phone / tablet if supported
- Arabic RTL device
- iOS TestFlight device (when available)

See [DEVICE_TEST_MATRIX.md](./DEVICE_TEST_MATRIX.md).

---

## Test log template

Copy per test run:

| Date | Tester | Build | Device | Checklist % | S0 | S1 | Notes |
|------|--------|-------|--------|-------------|----|----|-------|
| | | | | | | | |

---

## Promotion flow

```
QA_CHECKLIST (pass smoke) → INTERNAL_TESTING sign-off → Closed Beta → RELEASE_READINESS
```

Internal sign-off requires:

- [ ] [QA_CHECKLIST.md](./QA_CHECKLIST.md) smoke rows complete
- [ ] No open S0/S1 defects
- [ ] [RELEASE_READINESS.md](./RELEASE_READINESS.md) internal-testing section complete
- [ ] Staging Sentry receiving events (test crash verified once)

Next: [RELEASE_READINESS.md](./RELEASE_READINESS.md) · [PRODUCTION_BLOCKERS.md](./PRODUCTION_BLOCKERS.md)
