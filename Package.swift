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
            url: "https://github.com/cleverpush/cleverpush-ios-sdk/releases/download/1.34.50/CleverPush.xcframework.zip",
            checksum: "f14f9c23b350e085ea100e3fc05e5912db882ad142805857aa1e13d932e3712b"
        ),
        .binaryTarget(
            name: "CleverPushExtension",
            url: "https://github.com/cleverpush/cleverpush-ios-sdk/releases/download/1.34.50/CleverPushExtension.xcframework.zip",
            checksum: "d307e557ee2bfe16f78596a8d84ea578eab8bf45cb4df8c62f25383630417cde"
        ),
        .binaryTarget(
            name: "CleverPushLocation",
            url: "https://github.com/cleverpush/cleverpush-ios-sdk/releases/download/1.34.50/CleverPushLocation.xcframework.zip",
            checksum: "f9e52185017806566cc746f7818865e8aa00c64ccc1647359509f5b2256ad3c4"
        )
    ]
)
