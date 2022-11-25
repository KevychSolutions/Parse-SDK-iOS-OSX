// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Parse-SDK-iOS-OSX",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v12),
        .tvOS(.v12),
        .watchOS(.v5)
    ],
    products: [
        .library(
            name: "Parse",
            type: .dynamic,
            targets: ["Parse-iOS"]
        ),
        .library(
            name: "Parse-iOS-Dynamic",
            type: .dynamic,
            targets: ["Parse-iOS-Dynamic"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Parse-iOS",
            dependencies: [],
            path: "Parse/Parse",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("Private"),
            ]
        ),
        .target(
            name: "Parse-iOS-Dynamic",
            dependencies: [],
            path: "Parse/Parse",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("Private"),
            ]
        )
        // .executableTarget(
        //     name: "Parse-SDK-iOS-OSX",
        //     dependencies: []),
        // .testTarget(
        //     name: "Parse-SDK-iOS-OSXTests",
        //     dependencies: ["Parse-SDK-iOS-OSX"]),
    ]
)
