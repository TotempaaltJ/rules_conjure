load("//conjure_rust:conjure_rust.bzl", "conjure_rust_generate")

conjure_rust_generate(
    name = "conjure_rust_test",
    ir = "api.conjure.json",
    strip_prefix = "com.example.api",
)

sh_test(
    name = "validate_conjure_rust_test",
    srcs = [":conjure_rust_validator.sh"],
    args = ["$(rootpath :conjure_rust_test)"],
    data = [":conjure_rust_test"],
)
