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
            url: "https://github.com/cleverpush/cleverpush-ios-sdk/releases/download/1.34.56/CleverPush.xcframework.zip",
            checksum: "88a62e915f708958b35025f7698f6d58f29f6af2926a15be5ed200f6109f12f4"
        ),
        .binaryTarget(
            name: "CleverPushExtension",
            url: "https://github.com/cleverpush/cleverpush-ios-sdk/releases/download/1.34.56/CleverPushExtension.xcframework.zip",
            checksum: "4ae1492338b32249b1e8adead063800aa122e92295e4b5ce2dec6c5aca9aa965"
        ),
        .binaryTarget(
            name: "CleverPushLocation",
            url: "https://github.com/cleverpush/cleverpush-ios-sdk/releases/download/1.34.56/CleverPushLocation.xcframework.zip",
            checksum: "bdb7d94b39e37a0c567c3689f0f49d774956dd7f9cc0342340aae91385e93041"
        )
    ]
)
