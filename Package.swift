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
        .library(name: "ParseFacebookUtilsiOS", targets: ["ParseFacebookUtilsiOS"]),
        .library(name: "ParseFacebookUtilsTvOS", targets: ["ParseFacebookUtilsTvOS"]),
        .library(name: "ParseTwitterUtils", targets: ["ParseTwitterUtils"]),
        .library(name: "ParseUI", targets: ["ParseUI"]),
        .library(name: "ParseLiveQuery", targets: ["ParseLiveQuery"])
    ],
    dependencies: [
        .package(url: "https://github.com/parse-community/Bolts-ObjC.git", from: "1.10.0"),
        .package(url: "https://github.com/BoltsFramework/Bolts-Swift.git", from: "1.5.0"),
        .package(url: "https://github.com/daltoniam/Starscream.git", from: "3.1.1"),
        .package(url: "https://github.com/facebook/facebook-ios-sdk.git", from: "15.1.0")
    ],
    targets: [
 	.target(name: "ParseLiveQuery",
               dependencies: [
		"ParseCore",
                .product(name: "BoltsSwift", package: "Bolts-Swift"),
		"Starscream",
                .product(name: "Bolts", package: "Bolts-ObjC"),

               ],
                path: "ParseLiveQuery/ParseLiveQuery")
    ]
)
