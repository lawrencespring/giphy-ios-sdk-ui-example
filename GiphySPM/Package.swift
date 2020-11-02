// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GiphySPM",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GiphySPM",
            targets: ["GiphySPM"]),

    ],
    dependencies: [
        .package(path: "/Pods/Giphy/GiphySDK/GiphyCoreSDK.framework")
        .package(path: "/Pods/Giphy/GiphySDK/GiphyUISDK.framework")
    ],
    targets: [
        .target(
            name: "GiphySPM",
            dependencies: [])
    ]
)
