// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GPGoogleMaps-SPM",
    products: [
        .library(
            name: "GPGoogleMaps-SPM",
            targets: [
                "GoogleMapsWrapper",
            ]),
    ],
    targets: [
        .target(
            name: "GoogleMapsWrapper",
            dependencies: [
              "GoogleMaps",
              "GoogleMapsBase",
              "GoogleMapsCore",
            ],
            path: "GoogleMapsWrapper",
            linkerSettings: [
              .linkedLibrary("z"),
              .linkedFramework("CoreData"),
              .linkedFramework("CoreLocation"),
              .linkedFramework("CoreTelephony"),
              .linkedFramework("SystemConfiguration"),
            ]
        ),
        .binaryTarget(
            name: "GoogleMaps",
            url: "https://github.com/good-potatos/GPGoogleMaps-SPM/releases/download/8.0.0/GoogleMaps.xcframework.zip",
            checksum: "5492e272ab47205e1d48c3828229ccd474e9677786c87895452c740a91860156"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/good-potatos/GPGoogleMaps-SPM/releases/download/8.0.0/GoogleMapsBase.xcframework.zip",
            checksum: "5859f0846861e3d1b44f5bd0ce9ea1cc156368b89f07b0445918fda235f66402"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/good-potatos/GPGoogleMaps-SPM/releases/download/8.0.0/GoogleMapsCore.xcframework.zip",
            checksum: "a2f3f325da97815da382394b0d08411ccdee0310c9f5a210a6b00e9d3ca22882"
        )
    ]
)
