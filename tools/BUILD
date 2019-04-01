java_import(
    name = "deployjar",
    jars = ["play-routes-compiler_deploy.jar"],
)

java_binary(
    name = "compiler",
    main_class = "rulesplayroutes.routes.CommandLinePlayRoutesCompiler",
    visibility = ["//visibility:public"],
    runtime_deps = [":deployjar"],
)
