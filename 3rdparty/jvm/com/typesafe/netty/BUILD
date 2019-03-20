java_library(
    name = "netty_reactive_streams",
    exports = [
        "//3rdparty/jvm/io/netty:netty_handler",
        "//3rdparty/jvm/org/reactivestreams:reactive_streams",
        "//external:jar/com/typesafe/netty/netty_reactive_streams"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "netty_reactive_streams_http",
    exports = [
        "//3rdparty/jvm/io/netty:netty_codec_http",
        "//external:jar/com/typesafe/netty/netty_reactive_streams_http",
        ":netty_reactive_streams"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)


