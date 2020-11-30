
load("@bazel_skylib//:bzl_library.bzl", "bzl_library")

package(default_visibility = ["//visibility:public"])

exports_files([
    "LICENSE",
])

bzl_library(
    name = "bzl",
    srcs = [
        "index.bzl",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "//conjure:bzl",
        "//conjure_rust:bzl",
        "//conjure_typescript:bzl",
    ],
)
