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
            url: "https://github.com/cleverpush/cleverpush-ios-sdk/releases/download/1.34.43/CleverPush.xcframework.zip",
            checksum: "3ae82e15143f5637dc620a17bf276f3e666caa1da0f54438e9f4809ad20a2af3"
        ),
        .binaryTarget(
            name: "CleverPushExtension",
            url: "https://github.com/cleverpush/cleverpush-ios-sdk/releases/download/1.34.43/CleverPushExtension.xcframework.zip",
            checksum: "bd381f2b5af6bd8569458f79eb70c166487800b1fd1e4514499ebd59f8a45281"
        ),
        .binaryTarget(
            name: "CleverPushLocation",
            url: "https://github.com/cleverpush/cleverpush-ios-sdk/releases/download/1.34.43/CleverPushLocation.xcframework.zip",
            checksum: "f0e330084c4b5fa9d773fb81ed32ddd613652d4f51f4f1ccf61d60731d4c21d8"
        )
    ]
)
