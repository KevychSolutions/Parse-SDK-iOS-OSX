
import PackageDescription

let package = Package(
    name: "Parse_SDK",
    // platforms: [
    //     .iOS(.v15),
    // ],
    products: [
        .library(
            name: "Parse-iOS",
            targets: ["Parse-iOS"])
    ],
    // dependencies: [
    //     // no dependencies
    // ],

    targets: [
        .target(
            name: "Parse-iOS",
            dependencies: [],
            path: "Parse/Parse"
        )
    ]
)