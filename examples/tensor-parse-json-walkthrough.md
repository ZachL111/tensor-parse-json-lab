# Tensor Parse JSON Lab Walkthrough

This walk-through keeps the domain vocabulary close to the data instead of burying it in prose.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | token drift | 96 | hold |
| stress | grammar width | 204 | ship |
| edge | label quality | 193 | ship |
| recovery | error locality | 157 | ship |
| stale | token drift | 224 | ship |

Start with `stale` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`stale` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
