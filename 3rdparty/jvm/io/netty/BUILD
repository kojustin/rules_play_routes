java_library(
    name = "netty",
    exports = [
        "//external:jar/io/netty/netty"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "netty_buffer",
    exports = [
        "//external:jar/io/netty/netty_buffer",
        ":netty_common"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "netty_codec",
    exports = [
        "//external:jar/io/netty/netty_codec",
        ":netty_transport"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "netty_codec_http",
    exports = [
        "//external:jar/io/netty/netty_codec_http",
        ":netty_codec",
        ":netty_handler"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "netty_common",
    exports = [
        "//external:jar/io/netty/netty_common"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "netty_handler",
    exports = [
        "//external:jar/io/netty/netty_handler",
        ":netty_buffer",
        ":netty_codec",
        ":netty_transport"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "netty_transport",
    exports = [
        "//external:jar/io/netty/netty_transport",
        ":netty_buffer"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "netty_transport_native_epoll_jar_linux_x86_64",
    exports = [
        "//external:jar/io/netty/netty_transport_native_epoll_jar_linux_x86_64",
        ":netty_buffer",
        ":netty_common",
        ":netty_transport"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)


