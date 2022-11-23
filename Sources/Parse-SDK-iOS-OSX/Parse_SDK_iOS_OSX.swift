// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Parse-SDK-iOS-OSX",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "Parse-SDK-iOS-OSX",
		// Динамический или статический продукт
          	// по дефолту значение nil - SPM сам будет понимать что лучше подходит
                //  преференция скорей всего будет отдаваться .static
            type: .dynamic,
            targets: ["Parse-SDK-iOS-OSX""]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "Parse-SDK-iOS-OSX",
            dependencies: []),
        .testTarget(
            name: "Parse-SDK-iOS-OSX",
            dependencies: ["Parse-SDK-iOS-OSX"]),
    ]
)
