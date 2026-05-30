# Device Test Matrix

Recommended coverage for staging and beta. Track completion in your test log ([INTERNAL_TESTING.md](./INTERNAL_TESTING.md)).

---

## Android versions

| API level | Android version | Priority | Status |
|-----------|-----------------|----------|--------|
| 34 | 14 | P1 | ☐ |
| 33 | 13 | P1 | ☐ |
| 31–32 | 12 | P1 | ☐ |
| 29–30 | 10–11 | P2 | ☐ |
| 26–28 | 8–9 | P3 (if minSdk allows) | ☐ |

Confirm `minSdk` in `android/app/build.gradle.kts` before testing P3.

---

## Screen sizes

| Class | Example devices | Priority | Checks |
|-------|-----------------|----------|--------|
| Small phone | 5.0–5.5" | P1 | Checkout forms, bottom nav, product list |
| Normal phone | 6.0–6.7" | P1 | All flows |
| Large phone | 6.8"+ | P2 | Layout overflow |
| Tablet | 7"+ / Tab | P3 | Not optimized; note issues only |

---

## Manufacturers (Android)

Test at least **two OEMs** to catch WebView / launcher quirks:

| OEM | Priority | Notes |
|-----|----------|-------|
| Samsung One UI | P1 | Common in target market |
| Xiaomi / Redmi MIUI | P2 | Aggressive battery kill — test app restart |
| Stock / Pixel | P2 | Reference behavior |
| Huawei (no GMS) | P3 | Only if market requires |

---

## iOS (when TestFlight available)

| Version | Priority | Status |
|---------|----------|--------|
| Latest iOS | P1 | ☐ |
| Latest - 1 | P2 | ☐ |

Test **Safari payment URL** handoff (CH8).

---

## Network conditions

| Condition | Tool | Scenarios | Priority |
|-----------|------|-----------|----------|
| Wi‑Fi | Normal | Full regression | P1 |
| 4G / LTE | Cellular | Checkout, images | P1 |
| Slow 3G | Android dev options / Charles throttle | Loading states E3 | P1 |
| Offline | Airplane mode | E1, E2 | P1 |
| High latency | 500ms+ added latency | Payment polling | P2 |
| Captive portal | Hotel Wi‑Fi | Login, API errors | P3 |

---

## Locale matrix

| Locale | Script | RTL | Priority | Status |
|--------|--------|-----|----------|--------|
| en_US | LTR | No | P1 | ☐ |
| ar_EG / ar_SA | RTL | Yes | P1 | ☐ |
| en + AR switch | — | — | P2 | Change device language between runs |

---

## Feature focus by device type

| Device type | Must-run scenarios |
|-------------|-------------------|
| Primary QA phone | Full [QA_CHECKLIST.md](./QA_CHECKLIST.md) |
| Secondary phone | Auth N2, logout leak |
| Emulator | Dev smoke only — not sufficient alone for CH8 |
| Physical (any) | Payment URL CH8, real browser |

---

## Sign-off

| Milestone | Minimum devices |
|-----------|-----------------|
| Internal | 2 Android physical + 1 emulator |
| Closed beta | +1 small screen + 1 AR device + iOS if available |
| Production | Same as beta + production smoke on release build |
