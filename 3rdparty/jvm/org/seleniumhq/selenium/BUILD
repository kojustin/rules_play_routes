java_library(
    name = "selenium_api",
    exports = [
        "//3rdparty/jvm/com/google/code/gson:gson",
        "//3rdparty/jvm/com/google/guava:guava",
        "//3rdparty/jvm/org/apache/httpcomponents:httpclient",
        "//external:jar/org/seleniumhq/selenium/selenium_api"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "selenium_chrome_driver",
    exports = [
        "//external:jar/org/seleniumhq/selenium/selenium_chrome_driver",
        ":selenium_remote_driver"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "selenium_edge_driver",
    exports = [
        "//3rdparty/jvm/commons_io:commons_io",
        "//3rdparty/jvm/org/apache/commons:commons_exec",
        "//external:jar/org/seleniumhq/selenium/selenium_edge_driver",
        ":selenium_remote_driver"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "selenium_firefox_driver",
    exports = [
        "//3rdparty/jvm/commons_io:commons_io",
        "//3rdparty/jvm/org/apache/commons:commons_exec",
        "//external:jar/org/seleniumhq/selenium/selenium_firefox_driver",
        ":selenium_remote_driver"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "selenium_htmlunit_driver",
    exports = [
        "//3rdparty/jvm/net/sourceforge/htmlunit:htmlunit",
        "//3rdparty/jvm/org/apache/httpcomponents:httpclient",
        "//external:jar/org/seleniumhq/selenium/selenium_htmlunit_driver",
        ":selenium_support"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "selenium_ie_driver",
    exports = [
        "//3rdparty/jvm/net/java/dev/jna:jna",
        "//3rdparty/jvm/net/java/dev/jna:jna_platform",
        "//external:jar/org/seleniumhq/selenium/selenium_ie_driver",
        ":selenium_remote_driver"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "selenium_java",
    exports = [
        "//3rdparty/jvm/org/webbitserver:webbit",
        "//external:jar/org/seleniumhq/selenium/selenium_java",
        ":selenium_chrome_driver",
        ":selenium_edge_driver",
        ":selenium_firefox_driver",
        ":selenium_htmlunit_driver",
        ":selenium_ie_driver",
        ":selenium_leg_rc",
        ":selenium_safari_driver",
        ":selenium_support"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "selenium_leg_rc",
    exports = [
        "//external:jar/org/seleniumhq/selenium/selenium_leg_rc",
        ":selenium_remote_driver"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "selenium_remote_driver",
    exports = [
        "//3rdparty/jvm/cglib:cglib_nodep",
        "//3rdparty/jvm/com/google/code/gson:gson",
        "//3rdparty/jvm/com/google/guava:guava",
        "//3rdparty/jvm/net/java/dev/jna:jna",
        "//3rdparty/jvm/net/java/dev/jna:jna_platform",
        "//3rdparty/jvm/org/apache/commons:commons_exec",
        "//3rdparty/jvm/org/apache/httpcomponents:httpclient",
        "//external:jar/org/seleniumhq/selenium/selenium_remote_driver",
        ":selenium_api"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "selenium_safari_driver",
    exports = [
        "//3rdparty/jvm/org/webbitserver:webbit",
        "//external:jar/org/seleniumhq/selenium/selenium_safari_driver",
        ":selenium_remote_driver"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)



java_library(
    name = "selenium_support",
    exports = [
        "//external:jar/org/seleniumhq/selenium/selenium_support",
        ":selenium_remote_driver"
    ],
    visibility = [
        "//3rdparty/jvm:__subpackages__"
    ]
)


