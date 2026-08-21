# very_good_cli_test_matrix

Example workspace repo for testing `very_good workspace matrix` with a structure similar to
https://github.com/VeryGoodOpenSource/very_good_cli/issues/1695.

## Structure

- `app/` (main app package with many fake delayed tests)
- `app/packages/core/core_library_1`
- `app/packages/core/core_library_2`
- `app/packages/features/feature_a` (depends on `core_library_1`)
- `app/packages/features/feature_b` (depends on `core_library_2`)

## Key points

- The workspace shape mirrors the issue.
- Only **app tests** are defined and executed in CI.
- GitHub Actions still uses `very_good workspace matrix` for affected-project detection,
  then filters to only `app` in the matrix.
