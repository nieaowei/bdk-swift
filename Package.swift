// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bdk-swift",
    platforms: [
        .macOS(.v12),
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "BitcoinDevKit",
            targets: ["bdkFFI", "BitcoinDevKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "bdkFFI",
            url: "https://github.com/nieaowei/bdk-swift/releases/download/1.0.0-beta2/bdkFFI.xcframework.zip",
            checksum: "acfd7489ef41ecc489d2b2bdbc39ecf7e229e8a0e750c8064feb12950e744585"),
        .target(
            name: "BitcoinDevKit",
            dependencies: ["bdkFFI"]),
        .testTarget(
            name: "BitcoinDevKitTests",
            dependencies: ["BitcoinDevKit"]),
    ]
)
