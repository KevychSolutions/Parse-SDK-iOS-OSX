
import PackageDescription

let package = Package(
    name: "Parse_SDK",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        .library(
            name: "Parse",
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