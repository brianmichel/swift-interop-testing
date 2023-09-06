// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let swiftSettings: [SwiftSetting] = [.interoperabilityMode(.Cxx)]

let package = Package(
    name: "swift-interop-broken",
    products: [
        .executable(name: "Interop", targets: ["swift-interop-broken"]),
        .library(
            name: "CustomWindow",
            targets: ["CustomWindow"]
        )
    ],
    targets: [
        .executableTarget(
            name: "swift-interop-broken",
            dependencies: [
                "CustomWindow",
            ],
            swiftSettings: swiftSettings
        ),
        .target(
            name: "CustomWindow",
            dependencies: [
                "Window",
            ],
           swiftSettings: swiftSettings
        ),
        .target(
            name: "Window",
            dependencies: [
                "WindowsFoundation",
            ],
           swiftSettings: swiftSettings
        ),
        .target(
            name: "WindowsFoundation",
            dependencies: [],
            swiftSettings: swiftSettings
        ),
    ]
)
