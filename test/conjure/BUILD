load("//conjure:conjure.bzl", "conjure_generate_ir")

conjure_generate_ir(
    name = "conjure_test",
    src = "api.conjure.yml",
)

sh_test(
    name = "validate_conjure_test",
    srcs = [":conjure_validator.sh"],
    args = ["$(rootpath :conjure_test)"],
    data = [":conjure_test"],
)
