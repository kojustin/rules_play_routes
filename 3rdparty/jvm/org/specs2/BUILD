load("@io_bazel_rules_scala//scala:scala_import.bzl", "scala_import")
java_library(
    name = "specs2_common_2_12",
    exports = [
        "//3rdparty/jvm/org/scala_lang/modules:scala_parser_combinators_2_12",
        "//3rdparty/jvm/org/scala_lang/modules:scala_xml_2_12",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//3rdparty/jvm/org/scala_lang:scala_reflect",
        "//external:jar/org/specs2/specs2_common_2_12",
        ":specs2_fp_2_12"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "specs2_core_2_12",
    exports = [
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//3rdparty/jvm/org/scala_sbt:test_interface",
        "//external:jar/org/specs2/specs2_core_2_12",
        ":specs2_matcher_2_12"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "specs2_fp_2_12",
    exports = [
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//external:jar/org/specs2/specs2_fp_2_12"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "specs2_junit_2_12",
    exports = [
        "//3rdparty/jvm/junit:junit",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//3rdparty/jvm/org/scala_sbt:test_interface",
        "//external:jar/org/specs2/specs2_junit_2_12",
        ":specs2_core_2_12"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "specs2_matcher_2_12",
    exports = [
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//external:jar/org/specs2/specs2_matcher_2_12",
        ":specs2_common_2_12"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "specs2_mock_2_12",
    exports = [
        "//3rdparty/jvm/org/hamcrest:hamcrest_core",
        "//3rdparty/jvm/org/mockito:mockito_core",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//3rdparty/jvm/org/scala_sbt:test_interface",
        "//external:jar/org/specs2/specs2_mock_2_12",
        ":specs2_core_2_12"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)


