load(":http_archive.bzl", "http_archive_binary", "http_file_binary")

def conjure_typescript_repositories(version = "4.2.1"):
    http_archive_binary(
        name = "conjure_typescript",
        url = "https://palantir.bintray.com/releases/com/palantir/conjure/typescript/conjure-typescript/{version}/conjure-typescript-{version}.tgz",
        path = "bin/conjure-typescript",
        strip_prefix = "conjure-typescript-{version}",
        version = version,
    )

def _impl_conjure_typescript_generate(ctx):
    tree = ctx.actions.declare_directory(ctx.attr.name)
    ctx.actions.run(
        executable = ctx.executable._exec,
        inputs = [ctx.file.ir],
        outputs = [tree],
        arguments = [
            "generate",
            "--rawSource",
            ctx.file.ir.path,
            tree.path],
        progress_message = "Generating Typescript files into '{}'".format(tree.path),
        use_default_shell_env = True,
    )

    return [DefaultInfo(
        files = depset([tree]),
        # for use as a sh_* dependency
        data_runfiles = ctx.runfiles(files=[tree]),
    )]

conjure_typescript_generate = rule(
    implementation = _impl_conjure_typescript_generate,
    attrs = {
        "ir": attr.label(
            mandatory = True,
            allow_single_file = [".json"],
        ),
        "_exec": attr.label(
            default = Label("@conjure_typescript//:binary"),
            allow_files = True,
            executable = True,
            cfg = "host",
        )
    }
)
