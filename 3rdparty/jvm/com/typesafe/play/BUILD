java_import(
    name = "routes_compiler",
    exports = [
        "//3rdparty/jvm/commons_io:commons_io",
        "//3rdparty/jvm/org/scala_lang/modules:scala_parser_combinators_2_11",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        ":twirl_api_2_11"
    ],
    jars = [
        "//external:jar/com/typesafe/play/routes_compiler_2_11"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "twirl_api_2_11",
    exports = [
        "//3rdparty/jvm/org/apache/commons:commons_lang3",
        "//3rdparty/jvm/org/scala_lang/modules:scala_xml_2_11",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//external:jar/com/typesafe/play/twirl_api_2_11"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)


