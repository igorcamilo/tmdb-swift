// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "TMDB",
    platforms: [
        .iOS("13.0"),
        .macOS("10.15"),
        .tvOS("13.0"),
        .watchOS("6.0"),
    ],
    products: [
        .library(
            name: "TMDB",
            targets: ["TMDB"]
        ),
    ],
    targets: [
        .target(
            name: "TMDB"
        ),
        .testTarget(
            name: "TMDBTests",
            dependencies: ["TMDB"]
        ),
    ]
)
