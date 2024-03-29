// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Interpolator",
    platforms: [
        .iOS(.v8),
    ],
    products: [
        .library(name: "Interpolator", targets: ["Interpolator"]),
    ],
    targets: [
        .target(name: "Interpolator", path: "Interpolator")
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
