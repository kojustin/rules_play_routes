# Do not edit. bazel-deps autogenerates this file from ./dependencies.yml.
def _jar_artifact_impl(ctx):
    jar_name = "%s.jar" % ctx.name
    ctx.download(
        output=ctx.path("jar/%s" % jar_name),
        url=ctx.attr.urls,
        sha256=ctx.attr.sha256,
        executable=False
    )
    src_name="%s-sources.jar" % ctx.name
    srcjar_attr=""
    has_sources = len(ctx.attr.src_urls) != 0
    if has_sources:
        ctx.download(
            output=ctx.path("jar/%s" % src_name),
            url=ctx.attr.src_urls,
            sha256=ctx.attr.src_sha256,
            executable=False
        )
        srcjar_attr ='\n    srcjar = ":%s",' % src_name

    build_file_contents = """
package(default_visibility = ['//visibility:public'])
java_import(
    name = 'jar',
    tags = ['maven_coordinates={artifact}'],
    jars = ['{jar_name}'],{srcjar_attr}
)
filegroup(
    name = 'file',
    srcs = [
        '{jar_name}',
        '{src_name}'
    ],
    visibility = ['//visibility:public']
)\n""".format(artifact = ctx.attr.artifact, jar_name = jar_name, src_name = src_name, srcjar_attr = srcjar_attr)
    ctx.file(ctx.path("jar/BUILD"), build_file_contents, False)
    return None

jar_artifact = repository_rule(
    attrs = {
        "artifact": attr.string(mandatory = True),
        "sha256": attr.string(mandatory = True),
        "urls": attr.string_list(mandatory = True),
        "src_sha256": attr.string(mandatory = False, default=""),
        "src_urls": attr.string_list(mandatory = False, default=[]),
    },
    implementation = _jar_artifact_impl
)

def jar_artifact_callback(hash):
    src_urls = []
    src_sha256 = ""
    source=hash.get("source", None)
    if source != None:
        src_urls = [source["url"]]
        src_sha256 = source["sha256"]
    jar_artifact(
        artifact = hash["artifact"],
        name = hash["name"],
        urls = [hash["url"]],
        sha256 = hash["sha256"],
        src_urls = src_urls,
        src_sha256 = src_sha256
    )
    native.bind(name = hash["bind"], actual = hash["actual"])


def list_dependencies():
    return [
    {"artifact": "com.github.scopt:scopt_2.11:3.7.0", "lang": "scala", "sha1": "2f4b95257d082feb9e2a353a9a669c766b850931", "sha256": "cc05b6ac379f9b45b6d832b7be556312039f3d57928b62190d3dcd04f34470b5", "repository": "http://central.maven.org/maven2/", "url": "http://central.maven.org/maven2/com/github/scopt/scopt_2.11/3.7.0/scopt_2.11-3.7.0.jar", "source": {"sha1": "f01d91b15b7e2fe5b8933b5fcb9d3c40884879af", "sha256": "1c9111bafb55ec192d04898123199e51440e1633118b112d0c14a611491805ef", "repository": "http://central.maven.org/maven2/", "url": "http://central.maven.org/maven2/com/github/scopt/scopt_2.11/3.7.0/scopt_2.11-3.7.0-sources.jar"} , "name": "com_github_scopt_scopt_2_11", "actual": "@com_github_scopt_scopt_2_11//jar:file", "bind": "jar/com/github/scopt/scopt_2_11"},
    {"artifact": "com.typesafe.play:routes-compiler_2.11:2.5.18", "lang": "scala", "sha1": "cfca9de08f0fc8ac06e6f706a6f9c9f719f2b9ce", "sha256": "f91f01e6828b0ef3f893cffa93cb87d755297f993fff3b07cf8eec1144cc1b42", "repository": "http://central.maven.org/maven2/", "url": "http://central.maven.org/maven2/com/typesafe/play/routes-compiler_2.11/2.5.18/routes-compiler_2.11-2.5.18.jar", "source": {"sha1": "aea1d0db4635f46eba6c4b2e71c2fb8cbe22452c", "sha256": "f75fada15f3f866d4310f9d91edc983bc3e200a13da5a50f44c2238becf214a6", "repository": "http://central.maven.org/maven2/", "url": "http://central.maven.org/maven2/com/typesafe/play/routes-compiler_2.11/2.5.18/routes-compiler_2.11-2.5.18-sources.jar"} , "name": "com_typesafe_play_routes_compiler_2_11", "actual": "@com_typesafe_play_routes_compiler_2_11//jar:file", "bind": "jar/com/typesafe/play/routes_compiler_2_11"},
    {"artifact": "com.typesafe.play:twirl-api_2.11:1.1.1", "lang": "java", "sha1": "b029d9500caec7fe30f9a485fc654ee82d40d404", "sha256": "8cbc373640e2dab269bc0d4eada8fd47e9a06bb573ea9b7748eada58188547fa", "repository": "http://central.maven.org/maven2/", "url": "http://central.maven.org/maven2/com/typesafe/play/twirl-api_2.11/1.1.1/twirl-api_2.11-1.1.1.jar", "source": {"sha1": "5da972d58f8ad8333d4e7448c59eb3a9a074a85f", "sha256": "aa59cc9ff4a00e95330f8e8fcb4d4489d168bde4c2c433e5741428d62971d5e8", "repository": "http://central.maven.org/maven2/", "url": "http://central.maven.org/maven2/com/typesafe/play/twirl-api_2.11/1.1.1/twirl-api_2.11-1.1.1-sources.jar"} , "name": "com_typesafe_play_twirl_api_2_11", "actual": "@com_typesafe_play_twirl_api_2_11//jar", "bind": "jar/com/typesafe/play/twirl_api_2_11"},
    {"artifact": "commons-io:commons-io:2.4", "lang": "java", "sha1": "b1b6ea3b7e4aa4f492509a4952029cd8e48019ad", "sha256": "cc6a41dc3eaacc9e440a6bd0d2890b20d36b4ee408fe2d67122f328bb6e01581", "repository": "http://central.maven.org/maven2/", "url": "http://central.maven.org/maven2/commons-io/commons-io/2.4/commons-io-2.4.jar", "source": {"sha1": "f2d8698c46d1167ff24b06a840a87d91a02db891", "sha256": "d4635b348bbbf3f166d972b052bc4cac5b326c133beed7b8a1cab7ea22b61e01", "repository": "http://central.maven.org/maven2/", "url": "http://central.maven.org/maven2/commons-io/commons-io/2.4/commons-io-2.4-sources.jar"} , "name": "commons_io_commons_io", "actual": "@commons_io_commons_io//jar", "bind": "jar/commons_io/commons_io"},
    {"artifact": "org.apache.commons:commons-lang3:3.4", "lang": "java", "sha1": "5fe28b9518e58819180a43a850fbc0dd24b7c050", "sha256": "734c8356420cc8e30c795d64fd1fcd5d44ea9d90342a2cc3262c5158fbc6d98b", "repository": "http://central.maven.org/maven2/", "url": "http://central.maven.org/maven2/org/apache/commons/commons-lang3/3.4/commons-lang3-3.4.jar", "source": {"sha1": "b49dafc9cfef24c356827f322e773e7c26725dd2", "sha256": "4709f16a9e0f8fd83ae155083d63044e23045aac8f6f0183a2db09f492491b12", "repository": "http://central.maven.org/maven2/", "url": "http://central.maven.org/maven2/org/apache/commons/commons-lang3/3.4/commons-lang3-3.4-sources.jar"} , "name": "org_apache_commons_commons_lang3", "actual": "@org_apache_commons_commons_lang3//jar", "bind": "jar/org/apache/commons/commons_lang3"},
    {"artifact": "org.scala-lang.modules:scala-parser-combinators_2.11:1.0.4", "lang": "java", "sha1": "7369d653bcfa95d321994660477a4d7e81d7f490", "sha256": "0dfaafce29a9a245b0a9180ec2c1073d2bd8f0330f03a9f1f6a74d1bc83f62d6", "repository": "http://central.maven.org/maven2/", "url": "http://central.maven.org/maven2/org/scala-lang/modules/scala-parser-combinators_2.11/1.0.4/scala-parser-combinators_2.11-1.0.4.jar", "source": {"sha1": "2c66955d5543265eb450de4e9ec7ac467d94be54", "sha256": "8b8155720b40c0f7aee7dbc19d4b407307f6e57dd5394b58a3bc9849e28d25c1", "repository": "http://central.maven.org/maven2/", "url": "http://central.maven.org/maven2/org/scala-lang/modules/scala-parser-combinators_2.11/1.0.4/scala-parser-combinators_2.11-1.0.4-sources.jar"} , "name": "org_scala_lang_modules_scala_parser_combinators_2_11", "actual": "@org_scala_lang_modules_scala_parser_combinators_2_11//jar", "bind": "jar/org/scala_lang/modules/scala_parser_combinators_2_11"},
    {"artifact": "org.scala-lang.modules:scala-xml_2.11:1.0.1", "lang": "java", "sha1": "21dbac0088b91b8ffb7ac385301f4340f8ebe71f", "sha256": "eb84f08e8e1874d56f01ee259f99b8fd3c10676959e45728535411182451eff2", "repository": "http://central.maven.org/maven2/", "url": "http://central.maven.org/maven2/org/scala-lang/modules/scala-xml_2.11/1.0.1/scala-xml_2.11-1.0.1.jar", "source": {"sha1": "a598f0c51693338901223a8cf1f74a2d86279e2d", "sha256": "9f6233bc4240883dbf00bba36554a0864ee3fbab7cf949440d6523a2f882b611", "repository": "http://central.maven.org/maven2/", "url": "http://central.maven.org/maven2/org/scala-lang/modules/scala-xml_2.11/1.0.1/scala-xml_2.11-1.0.1-sources.jar"} , "name": "org_scala_lang_modules_scala_xml_2_11", "actual": "@org_scala_lang_modules_scala_xml_2_11//jar", "bind": "jar/org/scala_lang/modules/scala_xml_2_11"},
# duplicates in org.scala-lang:scala-library promoted to 2.11.11
# - com.github.scopt:scopt_2.11:3.7.0 wanted version 2.11.11
# - com.typesafe.play:routes-compiler_2.11:2.5.18 wanted version 2.11.7
# - com.typesafe.play:twirl-api_2.11:1.1.1 wanted version 2.11.6
# - org.scala-lang.modules:scala-parser-combinators_2.11:1.0.4 wanted version 2.11.6
# - org.scala-lang.modules:scala-xml_2.11:1.0.1 wanted version 2.11.0
    {"artifact": "org.scala-lang:scala-library:2.11.11", "lang": "java", "sha1": "e283d2b7fde6504f6a86458b1f6af465353907cc", "sha256": "f2ba1550a39304e5d06caaddfa226cdf0a4cbccee189828fa8c1ddf1110c4872", "repository": "http://central.maven.org/maven2/", "url": "http://central.maven.org/maven2/org/scala-lang/scala-library/2.11.11/scala-library-2.11.11.jar", "source": {"sha1": "55fcd4c282604a1a57f7310f116b159b7bcdbbde", "sha256": "887d2d1d88630ad2c3b9652e8d250b800e8ce3d2857bc60da022e151580c5c37", "repository": "http://central.maven.org/maven2/", "url": "http://central.maven.org/maven2/org/scala-lang/scala-library/2.11.11/scala-library-2.11.11-sources.jar"} , "name": "org_scala_lang_scala_library", "actual": "@org_scala_lang_scala_library//jar", "bind": "jar/org/scala_lang/scala_library"},
    ]

def maven_dependencies(callback = jar_artifact_callback):
    for hash in list_dependencies():
        callback(hash)
