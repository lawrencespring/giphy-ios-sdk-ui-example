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
            targets: ["WebP"]),
        .library(
            name: "WebPMux",
            targets: ["WebPMux"]),
        .library(
            name: "WebPDemux",
            targets: ["WebPDemux"]),
        .library(
            name: "WebPDecoder",
            targets: ["WebPDecoder"])
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
            path: "Frameworks/GiphyCoreSDK.xcframework"
        ),
        .binaryTarget(
            name: "GiphyUISDK",
            path: "Frameworks/GiphyUISDK.xcframework"
        ),
        .binaryTarget(
            name: "WebP",
            path: "Frameworks/WebP.xcframework"
        ),
        .binaryTarget(
            name: "WebPMux",
            path: "Frameworks/WebPMux.xcframework"
        ),
        .binaryTarget(
            name: "WebPDemux",
            path: "Frameworks/WebPDemux.xcframework"
        ),
        .binaryTarget(
            name: "WebPDecoder",
            path: "Frameworks/WebPDecoder.xcframework"
        ),
    ]
)
