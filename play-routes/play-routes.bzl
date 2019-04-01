"""Play Routes rules

Bazel rules for running the
[Play routes file compiler](https://github.com/playframework/playframework/tree/master/framework/src/routes-compiler/src/main/scala/play/routes/compiler)
on Play routes files
"""
gendir_base_path = "play/routes"

play_imports = [
    "controllers.Assets.Asset",
]

def _sanitize_string_for_usage(s):
    res_array = []
    for i in range(len(s)):
        c = s[i]
        if c.isalnum() or c == ".":
            res_array.append(c)
        else:
            res_array.append("_")
    return "".join(res_array)

def _format_import_args(imports):
    return ["--routesImport={}".format(i) for i in imports]

def _impl(ctx):
    gendir = ctx.actions.declare_directory(
        gendir_base_path + "/" + _sanitize_string_for_usage(ctx.attr.name),
    )
    paths = [f.path for f in ctx.files.srcs]
    args = [gendir.path] + [",".join(paths)]

    if ctx.attr.include_play_imports:
        args = args + _format_import_args(play_imports)

    args = args + _format_import_args(ctx.attr.routes_imports)

    if ctx.attr.generate_reverse_router:
        args = args + ["--generateReverseRouter"]

    if ctx.attr.namespace_reverse_router:
        args = args + ["--namespaceReverserRouter"]

    if ctx.attr.routes_generator:
        args = args + ["--routesGenerator={}".format(ctx.attr.routes_generator)]

    ctx.actions.run(
        inputs = ctx.files.srcs,
        outputs = [gendir],
        arguments = args,
        progress_message = "Compiling play routes",
        executable = ctx.executable._play_routes_compiler,
    )

    # TODO: something more portable
    ctx.actions.run_shell(
        inputs = [gendir],
        outputs = [ctx.outputs.srcjar],
        arguments = [ctx.executable._zipper.path, gendir.path, gendir.short_path, ctx.outputs.srcjar.path],
        command = """$1 c $4 META-INF/= $(find -L $2 -type f | while read v; do echo ${v#"${2%$3}"}=$v; done)""",
        progress_message = "Bundling compiled play routes into srcjar",
        tools = [ctx.executable._zipper],
    )

play_routes = rule(
    implementation = _impl,
    doc = "Compiles Play routes files templates to Scala sources files.",
    attrs = {
        "srcs": attr.label_list(
            doc = "Play routes files",
            allow_files = True,
            mandatory = True,
        ),
        "routes_imports": attr.string_list(
            doc = "Additional imports to import to the Play routes",
        ),
        "routes_generator": attr.string(
            doc = "The full class of the routes generator, e.g., `play.routes.compiler.InjectedRoutesGenerator`",
            default = "",
        ),
        "generate_reverse_router": attr.bool(
            doc = "Whether the reverse router should be generated. Setting to false may reduce compile times if it's not needed.",
            default = False,
        ),
        "namespace_reverse_router": attr.bool(
            doc = "Whether the reverse router should be namespaced. Useful if you have many routers that use the same actions.",
            default = False,
        ),
        "include_play_imports": attr.bool(
            doc = "If true, include the imports the Play project includes by default.",
            default = False,
        ),
        "_play_routes_compiler": attr.label(
            executable = True,
            cfg = "host",
            allow_files = True,
            default = Label("//tools:compiler"),
        ),
        "_zipper": attr.label(cfg = "host", default = "@bazel_tools//tools/zip:zipper", executable = True),
    },
    outputs = {
        "srcjar": "play_routes_%{name}.srcjar",
    },
)

def _my_rule_implementation(ctx):
    """Implementation for my_rule"""
    print("writing the file")
    print("compiler={}".format(ctx.attr._compiler))

my_rule = rule(
    implementation = _my_rule_implementation,
    doc = "my rule.",
    attrs = {
        "_compiler" : attr.label(default = "@com_github_kojustin_rules_play//:compiler"),
    },
)

# This is the implementation of the repository rule. It downloads the
# play-routes compiler as a deploy JAR from the releases page.
def _play_app_repository_rule_implementation(repository_ctx):
    """Implementation for play_app_repository_rule"""

    base_url = "https://github.com/kojustin/rules_play_routes/releases/download"
    compiler_url = "{}/{}/play-routes-compiler_deploy.jar".format(
        base_url, repository_ctx.attr.version)

    repository_ctx.report_progress("Downloading compiler from {}".format(compiler_url))

    download_info = repository_ctx.download(
        compiler_url, output = "play-routes-compiler_deploy.jar", sha256 = repository_ctx.attr.sha256)

    repository_ctx.report_progress("Successfully downloaded compiler from {}, sha256={}".format(
        compiler_url, download_info.sha256))

    # Write a build file that turns the deployment JAR into a Java binary that
    # we can run.
    build_file_content = """java_import(
    name = "deployjar",
    jars = [":play-routes-compiler_deploy.jar"],
)

java_binary(
    name = "compiler",
    main_class = "rulesplayroutes.routes.CommandLinePlayRoutesCompiler",
    visibility = ["//visibility:public"],
    runtime_deps = [":deployjar"],
)
"""
    repository_ctx.file("BUILD", content=build_file_content, executable = False)

# This is a repository rule.
_play_app_repository_rule = repository_rule(
    implementation = _play_app_repository_rule_implementation,
    local = True,
    attrs = {
        "version": attr.string(mandatory=True),
        "sha256": attr.string(mandatory=True),
    },
)

# This activates the play rules. This is required in the WORKSPACE
def play_repositories():
    _play_app_repository_rule(
        name = "com_github_kojustin_rules_play",
        version = "v0.0.1-TEST",
        sha256 = "d8d7fb894d9df586452da6e6b3690f165e1d1d59c771565076a4dd2adb4b0dd4",
    )

