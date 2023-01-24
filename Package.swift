// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoogleMaps",
		defaultLocalization: "en",
		platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "GoogleMaps", targets: ["GoogleMaps"]),
    ],
    dependencies: [
    	.package(name: "GoogleMapsBase", url: "https://github.com/hgpush/google-maps-base.git")
    	.package(name: "GoogleMapsCore", url: "https://github.com/hgpush/google-maps-core.git")
    ]
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "GoogleMaps",
            dependencies: ["GoogleMapsBase", "GoogleMapsCore"],
            path: "Sources/GoogleMapsSPM/GoogleMaps.xcframework"
		),
    ]
)
