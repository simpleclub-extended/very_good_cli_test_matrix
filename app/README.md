# App test benchmark

This workspace contains deliberately slow tests used to compare a recursive
test job with affected-package matrix jobs.

The app package contains only a smoke test. Slow tests are spread across core
and feature packages, with four tests per package, so affected packages can run
in parallel without one large root test job becoming the bottleneck.
