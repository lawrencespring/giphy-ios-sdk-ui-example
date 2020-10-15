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
            targets: ["GiphyCoreSDKWrapper"]),
        .library(
            name: "GiphyUISDK",
            type: .dynamic,
            targets: ["GiphyUISDK"])
    ],
    dependencies: [.package(url: "https://github.com/pinterest/PINCache.git", from: "3.0.2"),
                   .package(url: "https://github.com/onmyway133/DeepDiff.git", from: "2.3.1"),
                   .package(url: "https://github.com/lawrencespring/WebP", from: "0.0.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "GiphyCoreSDKWrapper",
            dependencies: ["PINCache", "DeepDiff", "WebP", .target(name: "GiphyCoreSDK"), .target(name: "GiphyUISDK")],
            path: "GiphyCoreSDKWrapper"
        ),
       .binaryTarget(
            name: "GiphyCoreSDK",
            path: "Frameworks/GiphyCoreSDK.xcframework"
        ),
        .binaryTarget(
            name: "GiphyUISDK",
            path: "Frameworks/GiphyUISDK.xcframework"
        )
    ]
)
