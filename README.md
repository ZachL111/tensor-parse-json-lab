# tensor-parse-json-lab

`tensor-parse-json-lab` is a Ruby project for Parsers. It turns implement a Ruby parsers project for json protocol validation, using framed sample traffic and bounds and ordering tests into a small local model with readable fixtures and a direct verification command.

## Reading Tensor Parse JSON Lab

Start with the README, then open `metadata/project.json` to check the constants behind the examples. After that, `fixtures/cases.csv` shows the compact path and `examples/extended_cases.csv` gives a wider look at the same rule.

## Design Sketch

The interesting part is the boundary between accepted and reviewed scenarios. Extended examples sit near that boundary so future edits can show whether the model became more permissive or more cautious. The Ruby code keeps the module small and leans on Minitest for direct fixture checks.

## Purpose

The goal is to capture the core behavior in code and make the surrounding assumptions obvious. A reader should be able to run the verifier, open the fixtures, and understand why each decision was made.

## What It Does

- Uses fixture data to keep error labels changes visible in code review.
- Includes extended examples for grammar boundaries, including `recovery` and `degraded`.
- Documents golden examples tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.

## Fixture Notes

`recovery` is the first example I would inspect because it lands on the `accept` path with a score of 184. The broader file also keeps `degraded` at -43 and `recovery` at 184, which gives the model a useful low-to-high spread.

## Files Worth Reading

- `lib`: library code
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Setup

The only required setup is the local Ruby toolchain. After cloning, stay in the repo root so fixture paths resolve correctly.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Verification

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Limits

This code is local-first. It makes no claim about deployed usage and avoids credentials, hosted state, and environment-specific setup.

## Next Directions

- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add a short report command that prints the score breakdown for a single scenario.
- Add one more parsers fixture that focuses on a malformed or borderline input.
