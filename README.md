# tensor-parse-json-lab

`tensor-parse-json-lab` is a compact Ruby repository for parsers, centered on this goal: Implement a Ruby parsers project for json protocol validation, using framed sample traffic and bounds and ordering tests.

## Use Case

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Tensor Parse JSON Lab Review Notes

For a quick review, compare `token drift` with `token drift` before reading the middle cases.

## Highlights

- `fixtures/domain_review.csv` adds cases for token drift and grammar width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/tensor-parse-json-walkthrough.md` walks through the case spread.
- The Ruby code includes a review path for `token drift` and `token drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Ruby implementation avoids hidden state so fixture changes are easy to reason about.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Future Work

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
