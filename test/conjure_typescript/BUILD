load("//conjure_typescript:conjure_typescript.bzl", "conjure_typescript_generate")

conjure_typescript_generate(
    name = "conjure_typescript_test",
    ir = "api.conjure.json",
)

py_test(
    name = "validate_conjure_typescript_test",
    srcs = [":validate_conjure_typescript_test.py"],
    args = ["$(rootpath :conjure_typescript_test)"],
    data = [":conjure_typescript_test"],
)
