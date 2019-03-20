java_library(
    name = "config",
    exports = [
        "//external:jar/com/typesafe/config"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "ssl_config_core_2_11",
    exports = [
        "//3rdparty/jvm/org/scala_lang/modules:scala_parser_combinators_2_11",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//external:jar/com/typesafe/ssl_config_core_2_11",
        ":config"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)


