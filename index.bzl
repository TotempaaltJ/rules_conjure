load("//conjure:conjure.bzl", _ir = "conjure_generate_ir")
load("//conjure_rust:conjure_rust.bzl", _rs = "conjure_rust_generate")
load("//conjure_typescript:conjure_typescript.bzl", _ts = "conjure_typescript_generate")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("//conjure:conjure.bzl", "conjure_repository")
load("//conjure_rust:conjure_rust.bzl", "conjure_rust_repository")
load("//conjure_rust/cargo:crates.bzl", "raze_fetch_remote_crates")
load("//conjure_typescript:conjure_typescript.bzl", "conjure_typescript_repositories")

conjure_generate_ir = _ir
conjure_rust_generate = _rs
conjure_typescript_generate = _ts

def conjure_repositories():
    conjure_repository(
        name = "conjure",
    )
    conjure_typescript_repositories()

    conjure_rust_repository(
        name = "conjure_rust",
    )

    raze_fetch_remote_crates()
