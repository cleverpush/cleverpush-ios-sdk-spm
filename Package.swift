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
            url: "https://github.com/cleverpush/cleverpush-ios-sdk/releases/download/1.34.51/CleverPush.xcframework.zip",
            checksum: "b70c37ed8d8fda55281a981956f957702ae8b748074e150798500add00750d2f"
        ),
        .binaryTarget(
            name: "CleverPushExtension",
            url: "https://github.com/cleverpush/cleverpush-ios-sdk/releases/download/1.34.51/CleverPushExtension.xcframework.zip",
            checksum: "bd8b8e9a7b41f9c0da99c982ede3f081a00db52b27b41432ef9d5a8fc96f58de"
        ),
        .binaryTarget(
            name: "CleverPushLocation",
            url: "https://github.com/cleverpush/cleverpush-ios-sdk/releases/download/1.34.51/CleverPushLocation.xcframework.zip",
            checksum: "00ae925f5a4054acdb35d44b8dcaaa82787a33c900147cbf2a75743c80701a6f"
        )
    ]
)
