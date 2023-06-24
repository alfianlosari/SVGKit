// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "SVGKit",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v15),
        .tvOS(.v15)
    ],
    products: [
        .library(
            name: "SVGKit",
            targets: ["SVGKit"]
        ),
        .library(
            name: "SVGKitSwift",
            targets: ["SVGKitSwift"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git", .upToNextMajor(from: "3.7.0"))
    ],
    targets: [
        .target(
            name: "SVGKit",
            dependencies: [
                "CocoaLumberjack"
            ],
            path: "Source",
            exclude: [
                "SwiftUI additions"
            ]
        ),
        .target(
            name: "SVGKitSwift",
            dependencies: [
                "SVGKit"
            ],
            path: "Source/SwiftUI additions"
        )
    ]
)
