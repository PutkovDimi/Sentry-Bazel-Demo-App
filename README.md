# Sentry-Bazel-Demo-App
Contains 8.21.0 Sentry version which fails while compiling the project

## Note
This repository contains rules for [Bazel](https://bazel.build) that can be used to generate Xcode projects from targets in your workspace.

## How to run
1. ./build_and_run

## How to reproduce
1. After run `./build_and_run` Xcode will open automatically.
2. CMD+B to start compiling
3. Check that an error appear.

## Note
#### To ensure the problem is with Sentry:
1. Go to `MODULE.bazel` and comment or remove `"swiftpkg_sentry_cocoa",` line (number `27`).
2. Run `./build_and_run`, Xcode will open automatically.
3. CMD+B to start compiling
4. Check that buld succeeded
