load("@io_bazel_rules_rust//rust:rust.bzl", "rust_library", "rust_binary")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

def _impl_conjure_rust_repository(ctx):
    ctx.download_and_extract(
        url = "https://github.com/palantir/conjure-rust/archive/0.7.2.tar.gz",
        output = "conjure_rust_repo",
        stripPrefix = "conjure-rust-0.7.2",
    )

    ctx.file("conjure_rust/BUILD")
    ctx.execute(["ln", "-s", "cargo", "conjure_rust/cargo"])

    ctx.template("BUILD", ctx.attr._build_tpl, substitutions = {
        "{CONJURE_RUST_SRC_PATH}": "conjure_rust_repo/conjure-rust/src",
        "{CARGO_SRC_PATH}": "conjure_rust/cargo/",
    })

conjure_rust_repository = repository_rule(
    implementation = _impl_conjure_rust_repository,
    attrs = {
        "_build_tpl": attr.label(
            default = "//conjure_rust:BUILD.tpl",
        ),
        "_cargo_tpl": attr.label(
            default = "//conjure_rust:cargo",
        ),
    }
)

def _impl_conjure_rust_generate(ctx):
    tree = ctx.actions.declare_directory(ctx.attr.name)
    ctx.actions.run(
        executable = ctx.executable._exec,
        inputs = [ctx.file.ir],
        outputs = [tree],
        arguments = [
            "generate",
            "--strip-prefix", ctx.attr.strip_prefix,
            ctx.file.ir.path,
            tree.path],
        progress_message = "Generating Rust files into '{}'".format(tree.path),
        use_default_shell_env = True,
    )

    return [DefaultInfo(
        files = depset([tree]),
        # for use as a sh_* dependency
        data_runfiles = ctx.runfiles(files=[tree]),
    )]

conjure_rust_generate = rule(
    implementation = _impl_conjure_rust_generate,
    attrs = {
        "ir": attr.label(
            mandatory = True,
            allow_single_file = [".json"],
        ),
        "strip_prefix": attr.string(
            mandatory = True,
        ),
        "_exec": attr.label(
            default = Label("@conjure_rust//:conjure_rust"),
            allow_files = True,
            executable = True,
            cfg = "host",
        )
    }
)
