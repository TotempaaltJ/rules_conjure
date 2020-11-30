package(default_visibility = ["//visibility:public"])

sh_binary(
    name = "conjure",
    srcs = [":conjure.sh"],
    deps = ["@bazel_tools//tools/bash/runfiles"],
    data = glob(["{JRE_PATH}/**/*", "{CONJURE_PATH}/**/*"])
)
