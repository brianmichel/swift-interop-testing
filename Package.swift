// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

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
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "swift-interop-broken",
            dependencies: [
                "CustomWindow",
            ],
            swiftSettings: [.interoperabilityMode(.Cxx)]
        ),
        .target(
            name: "CustomWindow",
            dependencies: [
                "Window",
            ],
            swiftSettings: [.interoperabilityMode(.Cxx)]
        ),
        .target(
            name: "Window",
            dependencies: [
                "WindowsFoundation",
            ],
            swiftSettings: [.interoperabilityMode(.Cxx)]
        ),
        .target(
            name: "WindowsFoundation",
            dependencies: [
                "CxxLibrary"
            ],
            swiftSettings: [.interoperabilityMode(.Cxx)]
        ),
        .target(
            name: "CxxLibrary",
             swiftSettings: [.interoperabilityMode(.Cxx)]
        ),
    ]
)
