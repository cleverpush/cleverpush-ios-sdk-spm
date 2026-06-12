// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "CleverPush",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "CleverPush",
            targets: ["CleverPushWrapper"]
        ),
        .library(
            name: "CleverPushExtension",
            targets: ["CleverPushExtensionWrapper"]
        ),
        .library(
            name: "CleverPushLocation",
            targets: ["CleverPushLocationWrapper"]
        )
    ],
    targets: [
        // Thin wrapper targets — SPM requires at least one source file per target.
        // These simply re-export the binary XCFramework targets below.
        .target(
            name: "CleverPushWrapper",
            dependencies: ["CleverPush"],
            path: "CleverPushWrapper"
        ),
        .target(
            name: "CleverPushExtensionWrapper",
            dependencies: ["CleverPushExtension"],
            path: "CleverPushExtensionWrapper"
        ),
        .target(
            name: "CleverPushLocationWrapper",
            dependencies: ["CleverPushLocation"],
            path: "CleverPushLocationWrapper"
        ),

        // Binary XCFramework targets — zip files are hosted as GitHub Release assets
        // on the main cleverpush-ios-sdk repo to keep this repo lightweight.
        .binaryTarget(
            name: "CleverPush",
            url: "https://github.com/cleverpush/cleverpush-ios-sdk/releases/download/1.34.48/CleverPush.xcframework.zip",
            checksum: "080abde6a25061f509b0ced8a621e204d6362e9972e804c0a3ebad1eafe131ff"
        ),
        .binaryTarget(
            name: "CleverPushExtension",
            url: "https://github.com/cleverpush/cleverpush-ios-sdk/releases/download/1.34.48/CleverPushExtension.xcframework.zip",
            checksum: "a84e95b54bd2add7231132f6af3810942e8ce23e78b48d7e48e2c4d21766af49"
        ),
        .binaryTarget(
            name: "CleverPushLocation",
            url: "https://github.com/cleverpush/cleverpush-ios-sdk/releases/download/1.34.48/CleverPushLocation.xcframework.zip",
            checksum: "38fea3bbe5c15b89f29345114f9d74454a0143b684e4dd66ffb400378a4b49be"
        )
    ]
)
