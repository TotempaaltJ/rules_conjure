load("@io_bazel_rules_rust//rust:rust.bzl", "rust_library", "rust_binary")

rust_binary(
    name = "conjure_rust",
    srcs = glob(["{CONJURE_RUST_SRC_PATH}/**/*.rs"]),
    deps = [
        "@//conjure_rust/cargo:structopt",
        "@//conjure_rust/cargo:conjure_codegen",
    ],
    edition = "2018",
    visibility = ["//visibility:public"],
)
