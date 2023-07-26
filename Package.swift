// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "GoogleMaps",
//	defaultLocalization: "en",
//	platforms: [.iOS(.v14)],
    	products: [
        	// Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "GoogleMaps", targets: ["GoogleMapsPackage"]),
        .library(name: "GoogleMapsBase", targets: ["GoogleMapsBasePackage"]),
        .library(name: "GoogleMapsCore", targets: ["GoogleMapsCorePackage"]),
    	],
	dependencies: [
	],
	targets: [
	// Targets are the basic building blocks of a package. A target can define a module or a test suite.
	// Targets can depend on other targets in this package, and on products in packages this package depends on.
		.binaryTarget(
			name: "GoogleMaps",
			url: "https://github.com/hgpush/google-maps-package/releases/download/1.0.1/GoogleMaps_3p.xcframework.zip",
			checksum: "93cc594719cdfcc993e7e6fa06fa989f033fd412f92b0c8e2b148ff7a2b6fb9c"
		),
    .binaryTarget(
        name: "GoogleMapsCore",
        url: "https://github.com/hgpush/google-maps-package/releases/download/1.0.1/GoogleMapsCore_3p.xcframework.zip",
        checksum: "eef29bd7107889482ecbd7c60fd3eedfc2d53a6720bf8deee09b1eb20f1afd81"
    ),
    .binaryTarget(
        name: "GoogleMapsBase",
        url: "https://github.com/hgpush/google-maps-package/releases/download/1.0.1/GoogleMapsBase_3p.xcframework.zip",
        checksum: "af10b10661a5ee4d476050239573cfe2abc6e1148c14de650a88606e20aefe94"
    ),
		.target(
			name: "GoogleMapsPackage",
			dependencies: [
				"GoogleMaps",
			],
      path: "GoogleMaps",
			sources: ["dummy.m"],
			resources: [
				.copy("Resources/GoogleMaps.bundle")
      ],
      publicHeadersPath: "Sources"
		),
    .target(
      name: "GoogleMapsBasePackage",
      dependencies: [
        "GoogleMapsBase",
      ],
      path: "GoogleMapsBase",
      sources: ["dummy.m"],
      publicHeadersPath: "Sources"
    ),
    .target(
      name: "GoogleMapsCorePackage",
      dependencies: [
        "GoogleMapsCore"
      ],
      path: "GoogleMapsCore",
      sources: ["dummy.m"],
      publicHeadersPath: "Sources"
    )
	]
)
