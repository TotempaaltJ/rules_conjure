"""
@generated
cargo-raze generated Bazel file.

DO NOT EDIT! Replaced on runs of cargo-raze
"""

load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")  # buildifier: disable=load

def raze_fetch_remote_crates():
    """This function defines a collection of repos and should be called in a WORKSPACE file"""
    maybe(
        http_archive,
        name = "raze__addr2line__0_14_0",
        url = "https://crates.io/api/v1/crates/addr2line/0.14.0/download",
        type = "tar.gz",
        strip_prefix = "addr2line-0.14.0",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.addr2line-0.14.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__adler__0_2_3",
        url = "https://crates.io/api/v1/crates/adler/0.2.3/download",
        type = "tar.gz",
        strip_prefix = "adler-0.2.3",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.adler-0.2.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ansi_term__0_11_0",
        url = "https://crates.io/api/v1/crates/ansi_term/0.11.0/download",
        type = "tar.gz",
        strip_prefix = "ansi_term-0.11.0",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.ansi_term-0.11.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__atty__0_2_14",
        url = "https://crates.io/api/v1/crates/atty/0.2.14/download",
        type = "tar.gz",
        strip_prefix = "atty-0.2.14",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.atty-0.2.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__autocfg__1_0_1",
        url = "https://crates.io/api/v1/crates/autocfg/1.0.1/download",
        type = "tar.gz",
        strip_prefix = "autocfg-1.0.1",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.autocfg-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__backtrace__0_3_55",
        url = "https://crates.io/api/v1/crates/backtrace/0.3.55/download",
        type = "tar.gz",
        strip_prefix = "backtrace-0.3.55",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.backtrace-0.3.55.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__base64__0_12_3",
        url = "https://crates.io/api/v1/crates/base64/0.12.3/download",
        type = "tar.gz",
        strip_prefix = "base64-0.12.3",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.base64-0.12.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bitflags__1_2_1",
        url = "https://crates.io/api/v1/crates/bitflags/1.2.1/download",
        type = "tar.gz",
        strip_prefix = "bitflags-1.2.1",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.bitflags-1.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cfg_if__1_0_0",
        url = "https://crates.io/api/v1/crates/cfg-if/1.0.0/download",
        type = "tar.gz",
        strip_prefix = "cfg-if-1.0.0",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.cfg-if-1.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__chrono__0_4_19",
        url = "https://crates.io/api/v1/crates/chrono/0.4.19/download",
        type = "tar.gz",
        strip_prefix = "chrono-0.4.19",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.chrono-0.4.19.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__clap__2_33_3",
        url = "https://crates.io/api/v1/crates/clap/2.33.3/download",
        type = "tar.gz",
        strip_prefix = "clap-2.33.3",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.clap-2.33.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__conjure_codegen__0_7_2",
        url = "https://crates.io/api/v1/crates/conjure-codegen/0.7.2/download",
        type = "tar.gz",
        strip_prefix = "conjure-codegen-0.7.2",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.conjure-codegen-0.7.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__conjure_object__0_7_2",
        url = "https://crates.io/api/v1/crates/conjure-object/0.7.2/download",
        type = "tar.gz",
        strip_prefix = "conjure-object-0.7.2",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.conjure-object-0.7.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__conjure_serde__0_7_2",
        url = "https://crates.io/api/v1/crates/conjure-serde/0.7.2/download",
        type = "tar.gz",
        strip_prefix = "conjure-serde-0.7.2",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.conjure-serde-0.7.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__failure__0_1_8",
        url = "https://crates.io/api/v1/crates/failure/0.1.8/download",
        type = "tar.gz",
        strip_prefix = "failure-0.1.8",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.failure-0.1.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__failure_derive__0_1_8",
        url = "https://crates.io/api/v1/crates/failure_derive/0.1.8/download",
        type = "tar.gz",
        strip_prefix = "failure_derive-0.1.8",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.failure_derive-0.1.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__gimli__0_23_0",
        url = "https://crates.io/api/v1/crates/gimli/0.23.0/download",
        type = "tar.gz",
        strip_prefix = "gimli-0.23.0",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.gimli-0.23.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__heck__0_3_1",
        url = "https://crates.io/api/v1/crates/heck/0.3.1/download",
        type = "tar.gz",
        strip_prefix = "heck-0.3.1",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.heck-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__hermit_abi__0_1_17",
        url = "https://crates.io/api/v1/crates/hermit-abi/0.1.17/download",
        type = "tar.gz",
        strip_prefix = "hermit-abi-0.1.17",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.hermit-abi-0.1.17.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__itoa__0_4_6",
        url = "https://crates.io/api/v1/crates/itoa/0.4.6/download",
        type = "tar.gz",
        strip_prefix = "itoa-0.4.6",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.itoa-0.4.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__lazy_static__1_4_0",
        url = "https://crates.io/api/v1/crates/lazy_static/1.4.0/download",
        type = "tar.gz",
        strip_prefix = "lazy_static-1.4.0",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.lazy_static-1.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__libc__0_2_80",
        url = "https://crates.io/api/v1/crates/libc/0.2.80/download",
        type = "tar.gz",
        strip_prefix = "libc-0.2.80",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.libc-0.2.80.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__miniz_oxide__0_4_3",
        url = "https://crates.io/api/v1/crates/miniz_oxide/0.4.3/download",
        type = "tar.gz",
        strip_prefix = "miniz_oxide-0.4.3",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.miniz_oxide-0.4.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__num_integer__0_1_44",
        url = "https://crates.io/api/v1/crates/num-integer/0.1.44/download",
        type = "tar.gz",
        strip_prefix = "num-integer-0.1.44",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.num-integer-0.1.44.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__num_traits__0_2_14",
        url = "https://crates.io/api/v1/crates/num-traits/0.2.14/download",
        type = "tar.gz",
        strip_prefix = "num-traits-0.2.14",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.num-traits-0.2.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__object__0_22_0",
        url = "https://crates.io/api/v1/crates/object/0.22.0/download",
        type = "tar.gz",
        strip_prefix = "object-0.22.0",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.object-0.22.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ordered_float__1_1_0",
        url = "https://crates.io/api/v1/crates/ordered-float/1.1.0/download",
        type = "tar.gz",
        strip_prefix = "ordered-float-1.1.0",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.ordered-float-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro_error__1_0_4",
        url = "https://crates.io/api/v1/crates/proc-macro-error/1.0.4/download",
        type = "tar.gz",
        strip_prefix = "proc-macro-error-1.0.4",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.proc-macro-error-1.0.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro_error_attr__1_0_4",
        url = "https://crates.io/api/v1/crates/proc-macro-error-attr/1.0.4/download",
        type = "tar.gz",
        strip_prefix = "proc-macro-error-attr-1.0.4",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.proc-macro-error-attr-1.0.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro2__1_0_24",
        url = "https://crates.io/api/v1/crates/proc-macro2/1.0.24/download",
        type = "tar.gz",
        strip_prefix = "proc-macro2-1.0.24",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.proc-macro2-1.0.24.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__quote__1_0_7",
        url = "https://crates.io/api/v1/crates/quote/1.0.7/download",
        type = "tar.gz",
        strip_prefix = "quote-1.0.7",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.quote-1.0.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__regex__1_4_2",
        url = "https://crates.io/api/v1/crates/regex/1.4.2/download",
        type = "tar.gz",
        strip_prefix = "regex-1.4.2",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.regex-1.4.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__regex_syntax__0_6_21",
        url = "https://crates.io/api/v1/crates/regex-syntax/0.6.21/download",
        type = "tar.gz",
        strip_prefix = "regex-syntax-0.6.21",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.regex-syntax-0.6.21.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rustc_demangle__0_1_18",
        url = "https://crates.io/api/v1/crates/rustc-demangle/0.1.18/download",
        type = "tar.gz",
        strip_prefix = "rustc-demangle-0.1.18",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.rustc-demangle-0.1.18.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ryu__1_0_5",
        url = "https://crates.io/api/v1/crates/ryu/1.0.5/download",
        type = "tar.gz",
        strip_prefix = "ryu-1.0.5",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.ryu-1.0.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde__1_0_117",
        url = "https://crates.io/api/v1/crates/serde/1.0.117/download",
        type = "tar.gz",
        strip_prefix = "serde-1.0.117",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.serde-1.0.117.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_bytes__0_11_5",
        url = "https://crates.io/api/v1/crates/serde_bytes/0.11.5/download",
        type = "tar.gz",
        strip_prefix = "serde_bytes-0.11.5",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.serde_bytes-0.11.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_derive__1_0_117",
        url = "https://crates.io/api/v1/crates/serde_derive/1.0.117/download",
        type = "tar.gz",
        strip_prefix = "serde_derive-1.0.117",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.serde_derive-1.0.117.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_json__1_0_59",
        url = "https://crates.io/api/v1/crates/serde_json/1.0.59/download",
        type = "tar.gz",
        strip_prefix = "serde_json-1.0.59",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.serde_json-1.0.59.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__strsim__0_8_0",
        url = "https://crates.io/api/v1/crates/strsim/0.8.0/download",
        type = "tar.gz",
        strip_prefix = "strsim-0.8.0",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.strsim-0.8.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__structopt__0_3_20",
        url = "https://crates.io/api/v1/crates/structopt/0.3.20/download",
        type = "tar.gz",
        strip_prefix = "structopt-0.3.20",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.structopt-0.3.20.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__structopt_derive__0_4_13",
        url = "https://crates.io/api/v1/crates/structopt-derive/0.4.13/download",
        type = "tar.gz",
        strip_prefix = "structopt-derive-0.4.13",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.structopt-derive-0.4.13.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__syn__1_0_52",
        url = "https://crates.io/api/v1/crates/syn/1.0.52/download",
        type = "tar.gz",
        strip_prefix = "syn-1.0.52",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.syn-1.0.52.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__synstructure__0_12_4",
        url = "https://crates.io/api/v1/crates/synstructure/0.12.4/download",
        type = "tar.gz",
        strip_prefix = "synstructure-0.12.4",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.synstructure-0.12.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__textwrap__0_11_0",
        url = "https://crates.io/api/v1/crates/textwrap/0.11.0/download",
        type = "tar.gz",
        strip_prefix = "textwrap-0.11.0",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.textwrap-0.11.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__time__0_1_44",
        url = "https://crates.io/api/v1/crates/time/0.1.44/download",
        type = "tar.gz",
        strip_prefix = "time-0.1.44",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.time-0.1.44.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_segmentation__1_7_1",
        url = "https://crates.io/api/v1/crates/unicode-segmentation/1.7.1/download",
        type = "tar.gz",
        strip_prefix = "unicode-segmentation-1.7.1",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.unicode-segmentation-1.7.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_width__0_1_8",
        url = "https://crates.io/api/v1/crates/unicode-width/0.1.8/download",
        type = "tar.gz",
        strip_prefix = "unicode-width-0.1.8",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.unicode-width-0.1.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_xid__0_2_1",
        url = "https://crates.io/api/v1/crates/unicode-xid/0.2.1/download",
        type = "tar.gz",
        strip_prefix = "unicode-xid-0.2.1",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.unicode-xid-0.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__uuid__0_8_1",
        url = "https://crates.io/api/v1/crates/uuid/0.8.1/download",
        type = "tar.gz",
        strip_prefix = "uuid-0.8.1",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.uuid-0.8.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__vec_map__0_8_2",
        url = "https://crates.io/api/v1/crates/vec_map/0.8.2/download",
        type = "tar.gz",
        strip_prefix = "vec_map-0.8.2",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.vec_map-0.8.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__version_check__0_9_2",
        url = "https://crates.io/api/v1/crates/version_check/0.9.2/download",
        type = "tar.gz",
        strip_prefix = "version_check-0.9.2",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.version_check-0.9.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasi__0_10_0_wasi_snapshot_preview1",
        url = "https://crates.io/api/v1/crates/wasi/0.10.0+wasi-snapshot-preview1/download",
        type = "tar.gz",
        strip_prefix = "wasi-0.10.0+wasi-snapshot-preview1",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.wasi-0.10.0+wasi-snapshot-preview1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi__0_3_9",
        url = "https://crates.io/api/v1/crates/winapi/0.3.9/download",
        type = "tar.gz",
        strip_prefix = "winapi-0.3.9",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.winapi-0.3.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_i686_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-i686-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        strip_prefix = "winapi-i686-pc-windows-gnu-0.4.0",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.winapi-i686-pc-windows-gnu-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_x86_64_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-x86_64-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        strip_prefix = "winapi-x86_64-pc-windows-gnu-0.4.0",
        build_file = Label("//conjure_rust/cargo/remote:BUILD.winapi-x86_64-pc-windows-gnu-0.4.0.bazel"),
    )
