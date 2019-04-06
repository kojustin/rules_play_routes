# `rules_play_routes` - _Play Framework_ Routes File Compilation for _Bazel_

## ⚠️ **Attention:**

This is a fork of Lucid Software's [`rules_play_routes`](https://github.com/lucidsoftware/rules_play_routes). The fork was made because theirs depends on [higherkindness/rules_scala](https://github.com/higherkindness/rules_scala) (A.K.A `rules_scala_annex`), which I found to be _incompatible_ with my Bazel monorepo that used [`bazelbuild/rules_scala`](https://github.com/bazelbuild/rules_scala) (A.K.A `rules_scala`).

I've refactored the project to work with [`bazelbuild/rules_scala`](https://github.com/bazelbuild/rules_scala), and also improved how the project uses [bazel_deps](https://github.com/johnynek/bazel-deps) to manage 3rd-party dependencies.

## Overview
This fork of `rules_play_routes` was forked from
[`thundergolfer/rules_play_routes`][tg] and supports Scala 2.12 and Play
Framework 2.7.0 and Bazel version 0.24.1. This ruleset is self-contained and
does not require that the consuming Bazel project declare the same external dependencies that
`rules_play_routes` declares.

This overcomes the issues described in

- https://github.com/thundergolfer/rules_play_routes/pull/1
- https://github.com/lucidsoftware/rules_play_routes/issues/5

`rules_play_routes` compiles [Play
Framework routes files] templates to Scala, so they can be used with
[`rules_scala`][rules].

[tg]: https://github.com/thundergolfer/rules_play_routes
[routing]: https://www.playframework.com/documentation/2.7.x/ScalaRouting
[rules]: https://github.com/bazelbuild/rules_scala

For more information about the Play Framework, see [the Play documentation](https://www.playframework.com/documentation/latest).

## Installation
Create a file called at the top of your repository named `WORKSPACE` and add the following snippet to it.

```python
# kojustin/rules_play_routes v0.0.2 Experiment released 2019.04.06
rules_play_routes_release = "0.0.2"

http_archive(
    name = "rules_play_routes",
    strip_prefix = "rules_play_routes-%s" % rules_play_routes_release,
    type = "tar.gz",
    url = "https://github.com/kojustin/rules_play_routes/archive/%s.tar.gz" % rules_play_routes_release,
)
```

This installs `rules_play_routes` to your `WORKSPACE` at the specified commit. Update the commit as needed.

## Stardoc Documentation
http://kojustin.github.io/rules_play_routes/

### Updating Stardoc
Stardoc is automatically updated on build merged into the master branch. To update the documentation, please submit a pull request. The doc will be updated when it is merged.

### Deploying documentation
The Stardoc site for `rules_play_routes` is deployed from the `gh-pages` branch. That branch is deployed with each build of the master branch.

## Usage
The `play_routes` rule compiles Play routes files to a source jar that can be used with the `rules_scala` rules. The jar must be added as a `src` for the dependent binary. For example,

```python
# Load the play_routes build rule.
load("@io_bazel_rules_play_routes//play-routes:play-routes.bzl", "play_routes")

play_routes(
  name = "play-routes",
  srcs = ["conf/routes"] + glob(["conf/*.routes"]),
  include_play_imports = True,
  generate_reverse_router = True,
  routes_imports = [...],
)

scala_binary(
  name = "foo-service",
  srcs = glob(["app/**/*.scala"]) + [":play-routes"],  <-- compiled routes are srcs!
  main_class = "foo.server.RunServer",
  deps = [...]
  )
)
```

See the [Stardoc documentation](https://lucidsoftware.github.io/rules_play_routes/play-routes/play-routes.html#play_routes) for the full list of options for `play_routes`.

### Use with the Play Framework

> ⚠️: `rules_twirl` is apparently supported in the original repo, but I have _not_ had success running `rules_twirl` with `rules_scala`, Bazel, and my fork.

`play_routes` can be used with [`rules_twirl`](https://github.com/lucidsoftware/rules_twirl) to run a Play Framework Service. For example, in your BUILD file

```python
# Load the play_routes build rule.
load("@io_bazel_rules_play_routes//play-routes:play-routes.bzl", "play_routes")

twirl_templates(
  name = "twirl-templates",
  source_directory = "app",
  include_play_imports = True,
  srcs = glob(["app/**/*.scala.html"])
    + glob(["app/**/*.scala.xml"])
    + glob(["app/**/*.scala.js"])
    + glob(["app/**/*.scala.txt"]),
  additional_imports = [...],
)

play_routes(
  name = "play-routes",
  srcs = ["conf/routes"] + glob(["conf/*.routes"]),
  include_play_imports = True,
  generate_reverse_router = True,
  routes_imports = [...],
)

scala_binary(
  name = "foo-service",
  srcs = glob(["app/**/*.scala"])  + [":twirl-templates", ":play-routes"],
  visibility = ["//visibility:public"],
  main_class = "play.core.server.ProdServerStart",
  resources = ["conf/logback.xml"] + glob(["conf/resources/**/*"]),
  resource_strip_prefix = native.package_name(),
  classpath_resources = ["conf/application.conf"],
  jvm_flags = [
  	"-Dhttp.port=9000",
  	"-Dapplication.name=foo-service",
  ],
  deps = [...],
)
```

## Development
### Command Line Play Routes Compiler
This project consists of the Play routes Bazel rules and a command line Play routes compiler compiler. The command line compiler can be built with
```bash
bazel build //play-routes-compiler
```

It can be run with
```bash
bazel run //play-routes-compiler
```

### Testing
All tests can be run using

```bash
test/run_all_tests.sh
```

They can also be run using
```bash
bazel test //test/...
```

### CI
The CI config in `tools/bazel.rc` and other options in `.bazelrc.travis` are used during CI builds.

#### Skylint
[Skylint](https://github.com/bazelbuild/bazel/blob/master/site/docs/skylark/skylint.md) is run during CI builds. To run it locally use
```bash
tools/skylint.sh
```

### Cutting a Release

1. Push code to Github.
2. Tag a "v0.0.X"
3. Build the compiler jar `bazel build
   //play-routes-compiler:play-routes-compiler_deploy.jar`
4. Caclculate sha256 `openssl dgst -sha256
   bazel-bin/play-routes-compiler/play-routes-compiler_deploy.jar`, copy this.
5. Upload `play-routes-compiler_deploy.jar` to the releases page.

