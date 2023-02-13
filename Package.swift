// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "ParseObjC",
    defaultLocalization: "en",
    platforms: [.iOS(.v12),
                .macOS(.v10_10),
                .tvOS(.v12),
                .watchOS(.v2)],
    products: [
        .library(name: "ParseObjC", targets: ["ParseCore"]),
        .library(name: "ParseLiveQuery", targets: ["ParseLiveQuery", "ParseCore"])
    ],
    dependencies: [
        .package(url: "https://github.com/parse-community/Bolts-ObjC.git", from: "1.10.0"),
        .package(url: "https://github.com/BoltsFramework/Bolts-Swift.git", from: "1.5.0"),
        .package(url: "https://github.com/daltoniam/Starscream.git", from: "3.1.1"),
        .package(url: "https://github.com/facebook/facebook-ios-sdk.git", from: "15.1.0")
    ],
    targets: [
        .target(
            name: "ParseCore",
            dependencies: [.product(name: "Bolts", package: "Bolts-ObjC")],
            path: "Parse/Parse",
            exclude: ["Resources/Parse-tvOS.Info.plist", "Resources/Parse-iOS.Info.plist", "Resources/Parse-OSX.Info.plist", "Resources/Parse-watchOS.Info.plist"],
            resources: [.process("Resources")],
            publicHeadersPath: "Source",
            cSettings: [.headerSearchPath("Internal/**")]),
 	.target(name: "ParseLiveQuery",
               dependencies: [
		"Starscream",
                .product(name: "BoltsSwift", package: "Bolts-Swift"),
                .product(name: "Bolts", package: "Bolts-ObjC")

               ],
                path: "ParseLiveQuery/ParseLiveQuery")
    ]
)
