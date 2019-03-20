java_library(
    name = "build_link",
    exports = [
        "//external:jar/com/typesafe/play/build_link",
        ":play_exceptions"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



scala_import(
    name = "play",
    exports = [
        "//3rdparty/jvm/com/fasterxml/jackson/core:jackson_annotations",
        "//3rdparty/jvm/com/fasterxml/jackson/core:jackson_core",
        "//3rdparty/jvm/com/fasterxml/jackson/core:jackson_databind",
        "//3rdparty/jvm/com/fasterxml/jackson/datatype:jackson_datatype_jdk8",
        "//3rdparty/jvm/com/fasterxml/jackson/datatype:jackson_datatype_jsr310",
        "//3rdparty/jvm/com/google/inject/extensions:guice_assistedinject",
        "//3rdparty/jvm/com/google/inject:guice",
        "//3rdparty/jvm/com/typesafe/akka:akka_actor_2_11",
        "//3rdparty/jvm/com/typesafe/akka:akka_slf4j_2_11",
        "//3rdparty/jvm/commons_codec:commons_codec",
        "//3rdparty/jvm/javax/transaction:jta",
        "//3rdparty/jvm/joda_time:joda_time",
        "//3rdparty/jvm/org/apache/commons:commons_lang3",
        "//3rdparty/jvm/org/joda:joda_convert",
        "//3rdparty/jvm/org/scala_lang/modules:scala_java8_compat_2_11",
        "//3rdparty/jvm/org/scala_lang/modules:scala_parser_combinators_2_11",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//3rdparty/jvm/org/scala_lang:scala_reflect",
        "//3rdparty/jvm/org/scala_stm:scala_stm_2_11",
        "//3rdparty/jvm/org/slf4j:jcl_over_slf4j",
        "//3rdparty/jvm/org/slf4j:jul_to_slf4j",
        "//3rdparty/jvm/org/slf4j:slf4j_api",
        "//3rdparty/jvm/xerces:xercesImpl",
        ":build_link",
        ":play_iteratees_2_11",
        ":play_json_2_11",
        ":play_netty_utils",
        ":play_streams_2_11",
        ":twirl_api_2_11"
    ],
    jars = [
        "//external:jar/com/typesafe/play/play_2_11"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "play_datacommons_2_11",
    exports = [
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//external:jar/com/typesafe/play/play_datacommons_2_11"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "play_exceptions",
    exports = [
        "//external:jar/com/typesafe/play/play_exceptions"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "play_functional_2_11",
    exports = [
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//external:jar/com/typesafe/play/play_functional_2_11"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "play_iteratees_2_11",
    exports = [
        "//3rdparty/jvm/com/typesafe:config",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//3rdparty/jvm/org/scala_stm:scala_stm_2_11",
        "//external:jar/com/typesafe/play/play_iteratees_2_11"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "play_json_2_11",
    exports = [
        "//3rdparty/jvm/com/fasterxml/jackson/core:jackson_annotations",
        "//3rdparty/jvm/com/fasterxml/jackson/core:jackson_core",
        "//3rdparty/jvm/com/fasterxml/jackson/core:jackson_databind",
        "//3rdparty/jvm/com/fasterxml/jackson/datatype:jackson_datatype_jdk8",
        "//3rdparty/jvm/com/fasterxml/jackson/datatype:jackson_datatype_jsr310",
        "//3rdparty/jvm/joda_time:joda_time",
        "//3rdparty/jvm/org/joda:joda_convert",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//3rdparty/jvm/org/scala_lang:scala_reflect",
        "//external:jar/com/typesafe/play/play_json_2_11",
        ":play_datacommons_2_11",
        ":play_functional_2_11",
        ":play_iteratees_2_11"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



scala_import(
    name = "play_netty_server",
    exports = [
        "//3rdparty/jvm/com/typesafe/netty:netty_reactive_streams_http",
        "//3rdparty/jvm/io/netty:netty_transport_native_epoll_jar_linux_x86_64",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        ":play_server"
    ],
    jars = [
        "//external:jar/com/typesafe/play/play_netty_server_2_11"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "play_netty_utils",
    exports = [
        "//3rdparty/jvm/org/slf4j:jcl_over_slf4j",
        "//3rdparty/jvm/org/slf4j:jul_to_slf4j",
        "//3rdparty/jvm/org/slf4j:slf4j_api",
        "//external:jar/com/typesafe/play/play_netty_utils"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



scala_import(
    name = "play_server",
    exports = [
        "//3rdparty/jvm/org/scala_lang:scala_library",
        ":play",
        ":play_iteratees_2_11"
    ],
    jars = [
        "//external:jar/com/typesafe/play/play_server_2_11"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



scala_import(
    name = "play_specs2",
    exports = [
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//3rdparty/jvm/org/specs2:specs2_core_2_11",
        "//3rdparty/jvm/org/specs2:specs2_junit_2_11",
        "//3rdparty/jvm/org/specs2:specs2_mock_2_11",
        ":play_test"
    ],
    jars = [
        "//external:jar/com/typesafe/play/play_specs2_2_11"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "play_streams_2_11",
    exports = [
        "//3rdparty/jvm/com/typesafe/akka:akka_stream_2_11",
        "//3rdparty/jvm/org/reactivestreams:reactive_streams",
        "//3rdparty/jvm/org/scala_lang/modules:scala_java8_compat_2_11",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        "//external:jar/com/typesafe/play/play_streams_2_11",
        ":play_iteratees_2_11"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



scala_import(
    name = "play_test",
    exports = [
        "//3rdparty/jvm/com/google/code/findbugs:jsr305",
        "//3rdparty/jvm/com/google/guava:guava",
        "//3rdparty/jvm/com/novocode:junit_interface",
        "//3rdparty/jvm/junit:junit",
        "//3rdparty/jvm/net/sourceforge/htmlunit:htmlunit",
        "//3rdparty/jvm/org/fluentlenium:fluentlenium_core",
        "//3rdparty/jvm/org/scala_lang:scala_library",
        ":play_netty_server"
    ],
    jars = [
        "//external:jar/com/typesafe/play/play_test_2_11"
    ],
    visibility = [
        "//visibility:public"
    ]
)



scala_import(
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


