workspace(name = "rules_play_routes")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

rules_scala_version = "88ad68b3b9d2b533099cdd3d88a41d106edfeecb"

http_archive(
    name = "io_bazel_rules_scala",
    sha256 = "96b79ceec705bf6e81c4099bb9dcf0aec15747e658dc9406cb4bbf8b108ca38a",
    strip_prefix = "rules_scala-{version}".format(version = rules_scala_version),
    type = "zip",
    url = "https://github.com/bazelbuild/rules_scala/archive/{version}.zip".format(version = rules_scala_version),
)

load("@io_bazel_rules_scala//scala:toolchains.bzl", "scala_register_toolchains")

scala_register_toolchains()

load("@io_bazel_rules_scala//scala:scala.bzl", "scala_repositories")

scala_repositories((
    "2.12.8",
    {
        "scala_compiler": "f34e9119f45abd41e85b9e121ba19dd9288b3b4af7f7047e86dc70236708d170",
        "scala_library": "321fb55685635c931eba4bc0d7668349da3f2c09aee2de93a70566066ff25c28",
        "scala_reflect": "4d6405395c4599ce04cea08ba082339e3e42135de9aae2923c9f5367e957315a",
    },
))

load("//3rdparty:maven.bzl", "maven_dependencies")

maven_dependencies()

#
# Import things required to generate Stardoc (f.k.a. Skydoc) documentation, see
#   https://skydoc.bazel.build/docs/getting_started_stardoc.html
#
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "io_bazel_skydoc",
    remote = "https://github.com/bazelbuild/skydoc.git",
    tag = "0.3.0",
)

load("@io_bazel_skydoc//:setup.bzl", "skydoc_repositories")

skydoc_repositories()

load("@io_bazel_rules_sass//:package.bzl", "rules_sass_dependencies")

rules_sass_dependencies()

load("@build_bazel_rules_nodejs//:defs.bzl", "node_repositories")

node_repositories()

load("@io_bazel_rules_sass//:defs.bzl", "sass_repositories")

sass_repositories()

#
# End Stardoc section.
#
