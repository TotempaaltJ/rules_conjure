# rules_conjure

Bazel rules for [Conjure](https://palantir.github.io/conjure/).

## Development

Link the correct bazelisk version from `tools/` to `./bazel`
* Linux (AMD64): `ln -s tools/bazelisk-linux-amd64 bazel`
* Linux (ARM): `ln -s tools/bazelisk-linux-arm64 bazel`
* Mac OS: `ln -s tools/bazelisk-darwin-amd64 bazel`
* Windows: idk man... this probably won't even build on Windows.

Test with `./bazel test //test:all_tests`
