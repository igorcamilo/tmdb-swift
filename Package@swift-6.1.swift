// swift-tools-version: 6.1

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
    )
  ],
  dependencies: [
    .package(
      url: "https://github.com/pointfreeco/swift-dependencies.git",
      from: "1.0.0"
    )
  ],
  targets: [
    .target(
      name: "TMDB",
      dependencies: [
        .product(name: "Dependencies", package: "swift-dependencies"),
        .product(name: "DependenciesMacros", package: "swift-dependencies"),
      ]
    ),
    .testTarget(
      name: "TMDBTests",
      dependencies: ["TMDB"]
    ),
  ]
)
