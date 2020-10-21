// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GiphySDK",
    products: [
        .library(
            name: "GiphySKD",
            targets: ["GiphySDK"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "GiphySDK",
            dependencies: []),
    ]
)
