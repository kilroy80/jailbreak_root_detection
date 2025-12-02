// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "jailbreak_root_detection",
    platforms: [
        .iOS("11.0")
    ],
    products: [
        .library(name: "jailbreak-root-detection", targets: ["jailbreak_root_detection"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "jailbreak_root_detection",
            resources: [
                .process("PrivacyInfo.xcprivacy"),
            ]
        )
    ]
)
