// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoogleMaps",
		defaultLocalization: "en",
		platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
			.library(name: "GoogleMapsPackage", targets: ["GoogleMaps", "GoogleMapsDeps"]),
    ],
    dependencies: [
			.package(name: "GoogleMapsBase", url: "https://github.com/hgpush/google-maps-base.git", branch: "main"),
			.package(name: "GoogleMapsCore", url: "https://github.com/hgpush/google-maps-core.git",	branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
			.binaryTarget(
					name: "GoogleMaps",
					url: "https://github.com/hgpush/google-maps-package/releases/download/1.0.0/GoogleMaps.xcframework.zip",
					checksum: "d1b06fcd340cf9b10be3f0a659c6c83de28f8e2ceb8fa53df42cbcc22f345fde"
			),
			.target(
				name: "GoogleMapsDeps",
				dependencies: ["GoogleMapsBase", "GoogleMapsCore"]
				resources: [
					.copy("Sources/Resources/GoogleMaps.bundle")
				]
			)
    ]
)
