# Production Blockers

Current status of release gates for **Torino Moda Style Flutter** (`torino-moda-style-f`).  
Last reviewed: Phase 9.4 documentation pass.

**Flow:** [QA_CHECKLIST.md](./QA_CHECKLIST.md) → [INTERNAL_TESTING.md](./INTERNAL_TESTING.md) → Closed Beta → Production

---

## Blockers (must fix before production)

These **prevent** Google Play / App Store production release.

| ID | Blocker | Status | Owner | Notes |
|----|---------|--------|-------|-------|
| B01 | Production API host not finalized / not HTTPS | Open | Ops | Set `API_BASE_URL` for prod builds |
| B02 | Android release signing + Play Console setup | **Partial** | Mobile | Gradle + docs done (9.5); need local keystore + Play Console app |
| B03 | Production payment gateway E2E not signed off | Open | Backend + QA | Real money path; legal/compliance |
| B04 | Privacy policy live at public URL | Open | Legal | Required for store listing |
| B05 | Production Sentry project + DSN in release pipeline | Open | Mobile | Separate from staging |
| B06 | Production database backup & restore verified | Open | Backend | DR requirement |
| B07 | Store listing assets (screenshots, description, rating) | Open | Product | Play / App Store |
| B08 | iOS distribution path (if shipping iOS) | Open | Mobile | TestFlight / App Store Connect |

---

## Warnings (acceptable for closed beta, fix before production)

| ID | Warning | Beta OK? | Target |
|----|---------|----------|--------|
| W01 | No camera barcode — manual only | Yes | Post-MVP |
| W02 | Payment polling stops in background | Yes | Phase 10 |
| W03 | No payment return deep links | Yes | Phase 10 |
| W04 | Sentry symbol upload not automated | Yes | 9.5 |
| W05 | Default app icon / name not branded | Yes | Before public marketing |
| W06 | No in-app language picker | Yes | Phase 10 |
| W07 | Staging-only QA so far — no external beta yet | N/A | Closed beta |
| W08 | `AppRelease` must be bumped with each store upload | Yes | Process |
| W09 | Server-side validation messages may be English | Yes | Backend i18n |

---

## Future improvements (not blocking beta or MVP production)

| ID | Improvement | Priority |
|----|-------------|----------|
| F01 | `mobile_scanner` for barcode | Medium |
| F02 | Push notifications for payment confirmed | Medium |
| F03 | Foreground-aware polling | Low |
| F04 | Certificate pinning | Low |
| F05 | Android/iOS flavors (side-by-side staging app) | Medium |
| F06 | Integration / E2E test suite in CI | Medium |
| F07 | Analytics funnel (separate from Sentry) | Low |
| F08 | Retry UX consistency on all screens | Low |
| F09 | Arabic typography / font stack | Low |
| F10 | GitHub Actions release workflow with secrets | Medium |

---

## What blocks production vs beta

| Gate | Blocked by | Beta allowed with |
|------|------------|-------------------|
| **Internal testing** | B01 staging API, CI green | W05 default icon |
| **Closed beta** | B02 signing (Play internal), B01 staging, QA sign-off | W01–W03, W04 |
| **Production** | **All B01–B08** | None of B-series open |

---

## App readiness (Flutter client)

| Area | Status | Evidence |
|------|--------|----------|
| MVP features | Ready | Phases 0–7 complete |
| Auth / session | Ready | Phase 8 hardening |
| Env validation / HTTPS | Ready | Phase 9.1 |
| CI | Ready | Phase 9.2 |
| Sentry integration | Ready | Phase 9.3; needs prod DSN at release |
| Analyze / tests | Ready | 94 tests, analyze clean |
| Store signing | **Partial** — Gradle reads `key.properties`; keystore + Play still required | B02 |
| Legal / store | **Not ready** | B04, B07 |

---

## Readiness assessment (summary)

| Stage | Ready? | Score (estimate) |
|-------|--------|------------------|
| Internal testing | **Yes**, once staging API + APK distributed | 85% |
| Closed beta | **Partial** — needs signing + beta track + QA sign-off | 65% |
| Production | **No** — blockers B01–B08 remain | 45% |

Detailed gates: [RELEASE_READINESS.md](./RELEASE_READINESS.md)  
Risks: [RISK_REGISTER.md](./RISK_REGISTER.md)

---

## Recommended next actions

1. Deploy stable **staging API** and distribute first staging APK.
2. Execute [QA_CHECKLIST.md](./QA_CHECKLIST.md) per [DEVICE_TEST_MATRIX.md](./DEVICE_TEST_MATRIX.md).
3. Complete **Phase 9.5**: signing, Play internal track, optional Sentry symbol upload.
4. Close beta after B02 + internal sign-off.
5. Address B03–B08 before production launch.
