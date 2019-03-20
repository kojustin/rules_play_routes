java_library(
    name = "specs2_common_2_11",
    exports = [
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//3rdparty/jvm/org/scala_lang:scala_reflect",
        "//3rdparty/jvm/org/scalaz/stream:scalaz_stream_2_11",
        "//3rdparty/jvm/org/scalaz:scalaz_concurrent_2_11",
        "//3rdparty/jvm/org/scalaz:scalaz_core_2_11",
        "//3rdparty/jvm/org/scalaz:scalaz_effect_2_11",
        "//3rdparty/jvm/org/spire_math:kind_projector_2_11",
        "//external:jar/org/specs2/specs2_common_2_11"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "specs2_core_2_11",
    exports = [
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//3rdparty/jvm/org/scala_lang:scala_reflect",
        "//external:jar/org/specs2/specs2_core_2_11",
        ":specs2_matcher_2_11"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "specs2_junit_2_11",
    exports = [
        "//3rdparty/jvm/junit:junit",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//external:jar/org/specs2/specs2_junit_2_11",
        ":specs2_core_2_11"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "specs2_matcher_2_11",
    exports = [
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//external:jar/org/specs2/specs2_matcher_2_11",
        ":specs2_common_2_11"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "specs2_mock_2_11",
    exports = [
        "//3rdparty/jvm/org/hamcrest:hamcrest_core",
        "//3rdparty/jvm/org/mockito:mockito_core",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//external:jar/org/specs2/specs2_mock_2_11",
        ":specs2_core_2_11"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)


