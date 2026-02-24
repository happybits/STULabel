// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "STULabel",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "STULabelSwift", targets: ["STULabelSwift"]),
    ],
    targets: [
        .binaryTarget(
            name: "STULabel",
            path: "Frameworks/STULabel.xcframework"
        ),
        .target(
            name: "STULabelSwift",
            dependencies: ["STULabel"],
            path: "STULabelSwift",
            exclude: ["Info.plist"],
            swiftSettings: [.swiftLanguageMode(.v5)]
        ),
    ]
)
