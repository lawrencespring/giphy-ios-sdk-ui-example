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
            url: "https://github.com/lawrencespring/giphy-ios-sdk-ui-example/blob/master/GiphyCoreSDK.xcframework.zip",
            checksum: "57124cfac23b341dabdc55e2e1d7b82c2ce407b2fef7a5eed23ba0072df6990d"
        ),
        .binaryTarget(
            name: "GiphyUISDK",
            url: "https://github.com/lawrencespring/giphy-ios-sdk-ui-example/blob/master/GiphyUISDK.xcframework.zip",
            checksum: "9007459a728321c5d80524e2bae67792d7ddd7bdc2d1dde7ae4dace10d700ba5"
        ),
        .binaryTarget(
            name: "WebP",
            url: "https://github.com/lawrencespring/giphy-ios-sdk-ui-example/blob/master/libwebp-1.1.0-ios-framework.zip",
            checksum: "9007459a728321c5d80524e2bae67792d7ddd7bdc2d1dde7ae4dace10d700ba5"
        ),
    ]
)
