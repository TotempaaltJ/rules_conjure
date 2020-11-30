load("//conjure:conjure.bzl", "conjure_generate_ir")

conjure_generate_ir(
    name = "conjure_test",
    src = "api.conjure.yml",
)

py_test(
    name = "validate_conjure_test",
    srcs = [":validate_conjure_test.py"],
    args = ["$(rootpath :conjure_test)"],
    data = [":conjure_test"],
)
