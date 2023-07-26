// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "GoogleMaps",
  products: [
    // Products define the executables and libraries a package produces, and make them visible to other packages.
    .library(
      name: "GoogleMaps",
      targets: ["GoogleMapsTarget"]),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    // .package(url: /* package url */, from: "1.0.0"),
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
      name: "GoogleMapsTarget",
      dependencies: ["GoogleMaps"],
      path: "GoogleMaps",
      sources: ["dummy.m"],
      resources: [
        .copy("Resources/GoogleMaps.bundle")
      ],
      publicHeadersPath: "Sources"
    ),
  ]
)

/*
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
//        .library(name: "GoogleMapsBase", targets: ["GoogleMapsBasePackage"]),
//        .library(name: "GoogleMapsCore", targets: ["GoogleMapsCorePackage"]),
    	],
	dependencies: [
	],
	targets: [
	// Targets are the basic building blocks of a package. A target can define a module or a test suite.
	// Targets can depend on other targets in this package, and on products in packages this package depends on.
		.binaryTarget(
			name: "GoogleMaps",
			url: "https://github.com/hgpush/google-maps-package/releases/download/1.0.0/GoogleMaps.xcframework.zip",
			checksum: "d1b06fcd340cf9b10be3f0a659c6c83de28f8e2ceb8fa53df42cbcc22f345fde"
		),
//    .binaryTarget(
//        name: "GoogleMapsCore",
//        url: "https://github.com/hgpush/google-maps-core/releases/download/1.0.0/GoogleMapsCore.xcframework.zip",
//        checksum: "cfd2d8f07e08fd3882e10fb5f0910e129dbbbec8b17932ced99c30c965febe53"
//    ),
//    .binaryTarget(
//        name: "GoogleMapsBase",
//        url: "https://github.com/hgpush/google-maps-base/releases/download/1.0.0/GoogleMapsBase.xcframework.zip",
//        checksum: "5139b6693ef1529ccd5bb2fdc2c91b30992ffc60f77901d01acc969865aae8ef"
//    ),
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
		)
//    .target(
//      name: "GoogleMapsBasePackage",
//      dependencies: [
//        "GoogleMapsBase",
//      ],
//      path: "GoogleMapsBase",
//      sources: ["dummy.m"],
//      publicHeadersPath: "Sources"
//    ),
//    .target(
//      name: "GoogleMapsCorePackage",
//      dependencies: [
//        "GoogleMapsCore"
//      ],
//      path: "GoogleMapsCore",
//      sources: ["dummy.m"],
//      publicHeadersPath: "Sources"
//    )
	]
)
*/
