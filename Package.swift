// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-interop-broken",
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "swift-interop-broken",
            dependencies: [
                "CustomWindow",
                "CxxLibrary",
            ],
            swiftSettings: [.interoperabilityMode(.Cxx)]
        ),
        .target(
            name: "CustomWindow",
            dependencies: [
                "Window",
            ]
        ),
        .target(
            name: "Window",
            dependencies: [
                "WindowsFoundation",
            ]
        ),

        .target(name: "WindowsFoundation"),
        .target(
            name: "CxxLibrary",
            swiftSettings: [.interoperabilityMode(.Cxx)]
        ),
    ]
)
