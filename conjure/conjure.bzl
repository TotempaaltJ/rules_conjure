OS_MAP = {
    "linux": "linux",
    "mac os x": "mac",
}

def _impl_conjure_repository(ctx):
    conjure_version = ctx.attr.conjure_version
    openjre_version = ctx.attr.openjre_version

    ctx.download(
        # sha256 = ctx.attr.openjre_sha256,
        url = "https://api.adoptopenjdk.net/v3/binary/version/{release_name}/{os}/{arch}/{image_type}/{jvm_impl}/{heap_size}/{vendor}".format(
            release_name = "jdk-" + openjre_version,
            os = OS_MAP[ctx.os.name],
            arch = "x64",
            image_type = "jre",
            jvm_impl = "hotspot",
            heap_size = "normal",
            vendor = "adoptopenjdk",
        ),
        output = "openjdk.tar.gz",
    )
    ctx.extract("openjdk.tar.gz")

    ctx.download_and_extract(
        sha256 = ctx.attr.conjure_sha256,
        url = "https://palantir.bintray.com/releases/com/palantir/conjure/conjure/{version}/conjure-{version}.tgz".format(version=conjure_version),
    )

    jre_path = "jdk-11.0.8+10-jre"
    if ctx.os.name == "mac os x":
        jre_path += "/Contents/Home"
    ctx.template("conjure.sh", ctx.attr._run_tpl, substitutions = {
        "{JRE_PATH}": jre_path,
        "{CONJURE_PATH}": "conjure-{version}".format(version=conjure_version),
    })
    ctx.template("BUILD", ctx.attr._build_tpl, substitutions = {
        "{JRE_PATH}": jre_path,
        "{CONJURE_PATH}": "conjure-{version}".format(version=conjure_version),
    })

conjure_repository = repository_rule(
    implementation = _impl_conjure_repository,
    attrs = {
        "openjre_version": attr.string(
            default = "11.0.8+10",
        ),
        "openjre_sha256": attr.string(
            default = "98615b1b369509965a612232622d39b5cefe117d6189179cbad4dcef2ee2f4e1",
        ),
        "conjure_version": attr.string(
            default = "4.12.0"
        ),
        "conjure_sha256": attr.string(
            default = "9f583c1cfbb1ad0f48d9ed3e2f648395df4c30f8a4ba398ed35214eafb3fdef1",
        ),
        "_run_tpl": attr.label(
            default = "//conjure:conjure.tpl",
        ),
        "_build_tpl": attr.label(
            default = "//conjure:BUILD.tpl",
        ),
    }
)

def _impl_conjure_generate_ir(ctx):
    ir = ctx.actions.declare_file(ctx.attr.name + ".json")
    ctx.actions.run(
        executable = ctx.executable._exec,
        inputs = [ctx.file.src],
        outputs = [ir],
        arguments = [
            "compile",
            ctx.file.src.path,
            ir.path],
        progress_message = "Generating Conjure IR files into '{}'".format(ir.path),
    )

    return [DefaultInfo(
        files = depset([ir]),
        # for use as a sh_* dependency
        data_runfiles = ctx.runfiles(files=[ir]),
    )]

conjure_generate_ir = rule(
    implementation = _impl_conjure_generate_ir,
    attrs = {
        "src": attr.label(
            mandatory = True,
            allow_single_file = [".yml"],
        ),
        "_exec": attr.label(
            default = Label("@conjure//:conjure"),
            allow_files = True,
            executable = True,
            cfg = "host",
        )
    }
)
