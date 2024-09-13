// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "LeetCode",
    platforms: [
        .macOS("14.0"), .iOS("16.0"), .watchOS("9.0"), .tvOS("16.0"),
        .visionOS("1.0"),
    ],
    targets: [
        .target(
            name: "LeetCode"),
        .testTarget(
            name: "LeetCodeTests",
            dependencies: ["LeetCode"]),
    ]
)
