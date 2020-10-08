// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "GhiphySDK",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GiphyCoreSDK",
            targets: ["GiphyCoreSDK"]),
        .library(
            name: "GiphyUISDK",
            targets: ["GiphyUISDK"]),
        .library(
            name: "WebP",
            targets: ["WebP"])
    ],
    dependencies: [
        .package(url: "https://github.com/pinterest/PINCache.git", from: "1.2.0"),
        .package(url: "https://github.com/onmyway133/DeepDiff.git", from: "2.3.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
       .binaryTarget(
            name: "GiphyCoreSDK",
            url: "https://github.com/danieleforlani/Giphy/blob/main/GiphyCoreSDK.xcframework.zip",
            checksum: "e8e0bfa1a61cf992048a4e3c5a4b98d79d45a9e58c3e0244b0d0a8e3d3c70974"
        ),
        .binaryTarget(
            name: "GiphyUISDK",
            url: "https://github.com/danieleforlani/Giphy/blob/main/GiphyUISDK.xcframework.zip",
            checksum: "06072cca4fe13327464c8472eb9e9ae86f75d56e0578753cdfe25e7219bbca5e"
        ),
        .binaryTarget(
            name: "WebP",
            url: "https://github.com/danieleforlani/Giphy/blob/main/libwebp-1.1.0-ios-framework.zip",
            checksum: "de1bd02e279b10721b3bd33c7e331e50322c0c00fff04d55fc9f9567e04b069d"
        ),
    ]
)
