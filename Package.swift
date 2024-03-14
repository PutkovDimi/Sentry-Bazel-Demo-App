// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "snapkit_example",
    dependencies: [
        .package(url: "https://github.com/getsentry/sentry-cocoa", from: "8.21.0"),
        .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.7.0")),
    ]
)
