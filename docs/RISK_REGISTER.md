# Risk Register

Living document for Torino Moda Style Flutter MVP. Update as risks are accepted or closed.

| ID | Risk | Severity | Likelihood | Mitigation | Owner | Release impact |
|----|------|----------|------------|------------|-------|----------------|
| R01 | **Payment polling only while screen open** — background app does not poll | Medium | High | Document for testers; push notifications deferred; user can manual refresh | Mobile | Beta OK; note in release notes |
| R02 | **No camera barcode scanner** — manual entry only | Low | High | Accept for MVP; Phase 10+ `mobile_scanner` | Product | Beta OK |
| R03 | **Staging environment unstable** — blocks QA | High | Medium | Backend SLA; health checks; freeze staging during test windows | Backend | Blocks internal test |
| R04 | **Release signing** — Gradle ready; keystore + Play Console pending | High | Medium | Generate keystore, `key.properties`, Play App Signing ([ANDROID_SIGNING.md](./ANDROID_SIGNING.md)) | Mobile | Blocks closed beta (Play) until keystore exists |
| R05 | **iOS TestFlight not set up** — iOS testers blocked | Medium | Medium | Apple Developer enrollment; provisioning | Mobile | Blocks iOS beta |
| R06 | **HTTP misconfiguration in prod build** — cleartext API | Critical | Low | `EnvValidation` hard-fails staging/prod HTTP; CI docs | Mobile | Blocker if violated |
| R07 | **Expired token UX** — user sees errors until re-login | Medium | Medium | Global 401 handler clears session (Phase 8); verify on device | Mobile | Beta OK with monitoring |
| R08 | **Sentry without symbol upload** — hard-to-read stack traces | Medium | High | Add `sentry_dart_plugin` in 9.5+; upload in release CI | Mobile | Beta OK |
| R09 | **No in-app language toggle** — relies on device locale | Low | Medium | Document for AR testers; device language AR | Product | Beta OK |
| R10 | **Indexed shell eager API load** — four tabs fetch on first entry | Low | Medium | Accept; monitor staging API load | Mobile | Beta OK |
| R11 | **Payment deep links not implemented** — return from browser manual | Medium | High | User returns via app switcher; document flow | Product | Beta OK with docs |
| R12 | **Real payment gateway not fully exercised** — staging mock only | High | Medium | E2E test with sandbox credentials before prod | Backend + QA | Blocks production |
| R13 | **Logout data leak** — prior user cart/profile | Critical | Low | `invalidateUserScopedProviders` on logout (Phase 8); test N2 | Mobile | Blocker if reproduced |
| R14 | **429 during payment poll** — polling stops | Low | Medium | Stops polling on rate limit; manual refresh | Mobile | Beta OK |
| R15 | **AppRelease version drift** — Sentry release mismatch | Low | Medium | Bump `app_release.dart` with `pubspec.yaml` | Mobile | Beta OK |
| R16 | **No offline queue** — actions fail when offline | Medium | High | Clear errors; retry on reconnect; no sync queue | Product | Beta OK |
| R17 | **Server validation messages in English** | Low | Medium | Backend i18n later; app shows API message as-is | Backend | Beta OK |
| R18 | **Privacy policy / terms not published** | High | Medium | Legal review; public URLs before store | Legal | Blocks production store |
| R19 | **Database backup untested on production** | Critical | Low | Backend DR drill before launch | Backend | Blocks production |
| R20 | **Duplicate order on double-tap checkout** | High | Low | Disable button while submitting; QA CH6; backend idempotency | Mobile + Backend | Blocker if reproduced |

**Severity:** Critical / High / Medium / Low  
**Release impact:** Blocker = stops that gate; Beta OK = acceptable with documented limitation

See [PRODUCTION_BLOCKERS.md](./PRODUCTION_BLOCKERS.md) for current blocker status.
