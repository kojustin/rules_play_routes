workspace(name = "io_bazel_rules_play_routes")

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
scala_repositories()


skylib_version = "8cecf885c8bf4c51e82fd6b50b9dd68d2c98f757"  # update this as needed
http_archive(
    name = "bazel_skylib",
    strip_prefix = "bazel-skylib-%s" % skylib_version,
    type = "zip",
    url = "https://github.com/bazelbuild/bazel-skylib/archive/%s.zip" % skylib_version,
    sha256 = "d54e5372d784ceb365f7d38c3dad7773f73b3b8ebc8fb90d58435a92b6a20256",
)

# To use the JavaScript version of Sass, we need to first install nodejs
rules_nodejs_version = "84882ba224f51f85d589e9cd45b30758cfdbf006"
http_archive(
    name = "build_bazel_rules_nodejs",
    sha256 = "8662ffdaedbee7b85d4aadbbe8005a65cceea128bb0d07aa892998e3683caea2",
    strip_prefix = "rules_nodejs-{}".format(rules_nodejs_version),
    type = "zip",
    url = "https://github.com/bazelbuild/rules_nodejs/archive/{}.zip".format(rules_nodejs_version),
)
load("@build_bazel_rules_nodejs//:package.bzl", "rules_nodejs_dependencies")
rules_nodejs_dependencies()

load("@build_bazel_rules_nodejs//:defs.bzl", "node_repositories")
node_repositories(package_json = [])

rules_sass_version = "8b61ad6953fde55031658e1731c335220f881369" # update this as needed
http_archive(
    name = "io_bazel_rules_sass",
    sha256 = "afb08f0ae0060c1dbdd11d22578972d087e5463e647ce35dfc2b6c2a41682da8",
    strip_prefix = "rules_sass-%s" % rules_sass_version,
    url = "https://github.com/bazelbuild/rules_sass/archive/%s.zip" % rules_sass_version,
)
load("@io_bazel_rules_sass//:package.bzl", "rules_sass_dependencies")
rules_sass_dependencies()

load("@io_bazel_rules_sass//sass:sass_repositories.bzl", "sass_repositories")
sass_repositories()

skydoc_version = "77e5399258f6d91417d23634fce97d73b40cf337" # update this as needed
http_archive(
    name = "io_bazel_skydoc",
    sha256 = "4e9bd9ef65af54dedd997b408fa26c2e70c30ee8e078bcc1b51a33cf7d7f9d7e",
    strip_prefix = "skydoc-%s" % skydoc_version,
    url = "https://github.com/bazelbuild/skydoc/archive/%s.zip" % skydoc_version,
)
load("@io_bazel_skydoc//skylark:skylark.bzl", "skydoc_repositories")
skydoc_repositories()

# For Skylint
# Once https://github.com/bazelbuild/bazel/issues/4086 is done, this should be
# much simpler
http_archive(
    name = "io_bazel",
    url = "https://github.com/bazelbuild/bazel/releases/download/0.19.0/bazel-0.19.0-dist.zip",
    sha256 = "ee6135c5c47306c8421d43ad83aabc4f219cb065376ee37797f2c8ba9a615315",
)
# Also for Skylint. Comes from
# https://github.com/cgrushko/proto_library/blob/master/WORKSPACE
http_archive(
    name = "com_google_protobuf",
    sha256 = "d7a221b3d4fb4f05b7473795ccea9e05dab3b8721f6286a95fffbffc2d926f8b",
    strip_prefix = "protobuf-3.6.1",
    urls = ["https://github.com/google/protobuf/archive/v3.6.1.zip"],
)

load("//3rdparty:maven.bzl", "maven_dependencies")
maven_dependencies()
