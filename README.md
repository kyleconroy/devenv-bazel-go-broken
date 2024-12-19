# Reproduction

```
git clone https://github.com/kyleconroy/devenv-bazel-go-broken
cd devenv-bazel-go-broken
devenv shell
bazelisk build //hello
```

This will fail with the following error:

```
INFO: Analyzed target //hello:hello (104 packages loaded, 5659 targets configured).
ERROR: /private/var/tmp/_bazel_kyle/c3d7894f4cdf3c1bcc4683dd549d8b70/external/rules_go~/BUILD.bazel:42:7: GoStdlib external/rules_go~/stdlib_/pkg failed: (Exit 1): builder failed: error executing GoStdlib command (from target @@rules_go~//:stdlib) bazel-out/darwin_arm64-opt-exec-ST-d57f47055a04/bin/external/rules_go~~go_sdk~devenv-bazel-go-broken__download_0/builder_reset/builder stdlib -sdk ... (remaining 13 arguments skipped)

Use --sandbox_debug to see verbose messages from the sandbox and retain the sandbox build root for debugging
# net/internal/cgotest
bazel-out/darwin_arm64-fastbuild/bin/external/rules_go~/stdlib_/src/net/internal/cgotest/resstate.go:10:10: fatal error: 'resolv.h' file not found
#include <resolv.h>
         ^~~~~~~~~~
1 error generated.
stdlib: error running subcommand external/rules_go~~go_sdk~devenv-bazel-go-broken__download_0/bin/go: exit status 1
Target //hello:hello failed to build
Use --verbose_failures to see the command lines of failed build steps.
INFO: Elapsed time: 27.889s, Critical Path: 12.49s
INFO: 8 processes: 7 internal, 1 darwin-sandbox.
ERROR: Build did NOT complete successfully
```
