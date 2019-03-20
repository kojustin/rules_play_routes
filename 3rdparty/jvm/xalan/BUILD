java_library(
    name = "serializer",
    exports = [
        "//3rdparty/jvm/xml_apis:xml_apis",
        "//external:jar/xalan/serializer"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "xalan",
    exports = [
        "//external:jar/xalan/xalan",
        ":serializer"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)


