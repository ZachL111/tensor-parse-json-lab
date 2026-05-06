# Review Journal

The repository goal stays the same: implement a Ruby parsers project for json protocol validation, using framed sample traffic and bounds and ordering tests. This note explains the added review angle.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its parsers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `token drift`, score 96, lane `hold`
- `stress`: `grammar width`, score 204, lane `ship`
- `edge`: `label quality`, score 193, lane `ship`
- `recovery`: `error locality`, score 157, lane `ship`
- `stale`: `token drift`, score 224, lane `ship`

## Note

This file is intentionally plain so the fixture remains the source of truth.
