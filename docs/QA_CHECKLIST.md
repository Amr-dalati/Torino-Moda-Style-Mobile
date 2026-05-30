# QA Checklist

Use this checklist for **staging** builds unless noted. Record results in the test log template in [INTERNAL_TESTING.md](./INTERNAL_TESTING.md).

**Build requirements:** `APP_ENV=staging`, HTTPS `API_BASE_URL`, optional `SENTRY_DSN`. See [ENVIRONMENTS.md](./ENVIRONMENTS.md).

---

## Test run metadata

| Field | Value |
|-------|--------|
| Build version | e.g. `1.0.0+2` |
| `APP_ENV` | staging |
| Tester | |
| Date | |
| Device / OS | |
| Locale | EN / AR |
| API base (host only) | |

---

## Auth

| # | Scenario | Steps | Expected | Pass |
|---|----------|-------|----------|------|
| A1 | Register | New phone + password → submit | Account created; lands on products shell | ☐ |
| A2 | Login valid | Known credentials | Products shell; session persisted | ☐ |
| A3 | Login invalid | Wrong password | Localized error; stays on login | ☐ |
| A4 | Session restore | Login → kill app → reopen | Still authenticated; no splash trap | ☐ |
| A5 | Logout | Profile → logout | Login screen; protected routes blocked | ☐ |
| A6 | Token expiry | Revoke token on backend (or wait expiry) → any API action | Redirect to login; no stale cart/profile | ☐ |
| A7 | Register validation | Empty / weak password | Field validation messages | ☐ |

---

## Products

| # | Scenario | Steps | Expected | Pass |
|---|----------|-------|----------|------|
| P1 | Products list | Open Products tab | List loads; empty state if none | ☐ |
| P2 | Product detail | Tap product | Detail, variants, price | ☐ |
| P3 | Add to cart from detail | Select variant → add | Success feedback; cart updates | ☐ |
| P4 | Search — results | Search known term | Matching products | ☐ |
| P5 | Search — empty | Search nonsense term | Empty / no results message | ☐ |
| P6 | Search — validation | Empty search | Validation message | ☐ |
| P7 | Barcode lookup — valid | Enter known barcode | Navigates to product; variant preselect if applicable | ☐ |
| P8 | Barcode lookup — not found | Unknown barcode | Not found error (snackbar) | ☐ |
| P9 | Pull to refresh | Pull list | Reloads without crash | ☐ |

---

## Cart

| # | Scenario | Steps | Expected | Pass |
|---|----------|-------|----------|------|
| C1 | Add item | Add from product detail | Item visible; subtotal updates | ☐ |
| C2 | Update quantity | Increase/decrease qty | Totals match backend | ☐ |
| C3 | Remove item | Remove line | Item gone; empty state if last | ☐ |
| C4 | Clear cart | Clear cart action | Empty cart; browse CTA | ☐ |
| C5 | Stock validation | Exceed stock (if backend enforces) | Clear error; no silent failure | ☐ |
| C6 | Cart badge | Add item → check tab badge | Badge reflects count | ☐ |

---

## Checkout

| # | Scenario | Steps | Expected | Pass |
|---|----------|-------|----------|------|
| CH1 | Checkout hub | Cart → checkout | Address step or prompt to add | ☐ |
| CH2 | Address selection | Select default / other address | Can proceed to review | ☐ |
| CH3 | Add address | New address with region/area | Saved; appears in list | ☐ |
| CH4 | Delivery region/area | Dropdowns load | Regions and areas populate | ☐ |
| CH5 | Quote | Review page loads quote | Subtotal, delivery, total match cart | ☐ |
| CH6 | Place order | Place order | Result screen; order number shown | ☐ |
| CH7 | Payment pending | Order awaiting payment | Pending badges; polling indicator if enabled | ☐ |
| CH8 | Open payment URL | Tap open payment URL (real device) | External browser opens | ☐ |
| CH9 | Invalid payment URL | (staging mock if available) | Error message; no crash | ☐ |
| CH10 | View order from result | View order | Order detail loads | ☐ |

---

## Orders

| # | Scenario | Steps | Expected | Pass |
|---|----------|-------|----------|------|
| O1 | Orders list | Orders tab | Past orders or empty state | ☐ |
| O2 | Order detail | Tap order | Items, totals, shipping, payment section | ☐ |
| O3 | Payment status refresh | Manual refresh on detail | Status updates | ☐ |
| O4 | Polling — pending | Leave detail on pending payment | “Checking payment status…”; stops when paid/failed | ☐ |
| O5 | Polling — paid | Complete payment on staging gateway | Polling stops; status shows paid | ☐ |
| O6 | Rate limit | (if reproducible) 429 during poll | Polling stops; no snackbar spam | ☐ |

---

## Profile

| # | Scenario | Steps | Expected | Pass |
|---|----------|-------|----------|------|
| PR1 | Load profile | Profile tab | Name, phone displayed | ☐ |
| PR2 | Update profile | Change name → save | Persists after reload | ☐ |
| PR3 | Addresses link | Profile → addresses | Management screen opens | ☐ |
| PR4 | Add / edit / delete address | CRUD operations | List updates; default works | ☐ |
| PR5 | Orders link | Navigate to orders | Orders list opens | ☐ |

---

## Localization

| # | Scenario | Steps | Expected | Pass |
|---|----------|-------|----------|------|
| L1 | English UI | Device locale EN | English strings on main flows | ☐ |
| L2 | Arabic UI | Device locale AR | Arabic strings | ☐ |
| L3 | RTL layout | AR locale | Mirrored layout; forms usable | ☐ |
| L4 | Status badges | Order/payment statuses | Localized labels (not raw API codes) | ☐ |
| L5 | Error messages | Trigger network error | User-facing message (not raw exception) | ☐ |

---

## Error handling & resilience

| # | Scenario | Steps | Expected | Pass |
|---|----------|-------|----------|------|
| E1 | Offline on splash | Airplane mode → cold start | No infinite loop; login or clear error path | ☐ |
| E2 | Offline — browse | Airplane mode on products | Loading/error state; retry when online | ☐ |
| E3 | Slow network | Throttle network (3G) | Loading indicators; no duplicate orders | ☐ |
| E4 | Server error | (staging 5xx if testable) | Message shown; app stable | ☐ |
| E5 | Rate limiting | Rapid payment refresh | Graceful handling | ☐ |
| E6 | App restart mid-poll | Kill app on pending order → reopen detail | Polling resumes or manual refresh works | ☐ |

---

## Navigation & session

| # | Scenario | Steps | Expected | Pass |
|---|----------|-------|----------|------|
| N1 | Bottom nav | Switch all four tabs | Correct screens; state preserved | ☐ |
| N2 | Login as another user | Logout → login different user | No prior user cart/profile data | ☐ |
| N3 | Back from product detail | Back from detail | Returns to list | ☐ |

---

## Sign-off

| Gate | Criteria | Signed off |
|------|----------|------------|
| Smoke | All P0 rows (A2, P1, C1, CH6, O1, PR1) pass on 1 Android + 1 iOS | ☐ |
| Full | ≥ 90% rows pass; no open S0/S1 bugs | ☐ |

**P0 bugs:** crash, data leak, cannot login/checkout, payment status never updates.

See [RELEASE_READINESS.md](./RELEASE_READINESS.md) for promotion gates.
