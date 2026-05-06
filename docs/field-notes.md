# Field Notes

This note keeps the parsers assumptions visible beside the checks.

The domain cases cover `token drift`, `grammar width`, `label quality`, and `error locality`. They sit beside the smaller starter fixture so the project has both a compact scoring check and a domain-flavored review check.

`stale` is the strongest case at 224 on `token drift`. `baseline` is the cautious anchor at 96 on `token drift`.

The language-specific addition keeps the review model in a module with Minitest coverage.
