load("//conjure:conjure.bzl", _ir = "generate_conjure_ir")
load("//conjure_rust:conjure_rust.bzl", _rs = "conjure_rust_generate")
load("//conjure_typescript:conjure_typescript.bzl", _ts = "conjure_typescript_generate")

generate_conjure_ir = _ir
conjure_rust_generate = _rs
conjure_typescript_generate = _ts
