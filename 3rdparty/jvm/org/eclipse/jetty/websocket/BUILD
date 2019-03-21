java_library(
    name = "websocket_api",
    exports = [
        "//external:jar/org/eclipse/jetty/websocket/websocket_api"
    ],
    licenses = [
        "notice"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "websocket_client",
    exports = [
        "//3rdparty/jvm/org/eclipse/jetty:jetty_io",
        "//3rdparty/jvm/org/eclipse/jetty:jetty_util",
        "//external:jar/org/eclipse/jetty/websocket/websocket_client",
        ":websocket_common"
    ],
    licenses = [
        "notice"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "websocket_common",
    exports = [
        "//external:jar/org/eclipse/jetty/websocket/websocket_common",
        ":websocket_api"
    ],
    licenses = [
        "notice"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)


