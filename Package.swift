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
            url: "https://s3.amazonaws.com/sdk.mobile.giphy.com/SDK/2.0.4/GiphySDK.zip",
            checksum: "The checksum of the ZIP archive that contains the XCFramework."
        ),
        .binaryTarget(
            name: "GiphyUISDK",
            url: "https://s3.amazonaws.com/sdk.mobile.giphy.com/SDK/2.0.4/GiphySDK.zip",
            checksum: "The checksum of the ZIP archive that contains the XCFramework."
        ),
        .binaryTarget(
            name: "WebP",
            url: "https://github.com/lawrencespring/giphy-ios-sdk-ui-example/blob/master/libwebp-1.1.0-ios-framework.zip",
            checksum: "The checksum of the ZIP archive that contains the XCFramework."
        ),
    ]
)
