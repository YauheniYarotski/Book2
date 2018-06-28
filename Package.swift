// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Book2",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
      .package(url: "https://github.com/vapor/websocket.git", from: "1.0.0"),
      .package(url: "https://github.com/PerfectlySoft/Perfect-HTTPServer.git", from: "3.0.0"),
      .package(url: "https://github.com/Hearst-DD/ObjectMapper.git", from: "3.2.0"),
      .package(url: "https://github.com/BrettRToomey/Jobs.git", from: "1.1.2"),
      .package(url: "https://github.com/apple/swift-nio.git", from: "1.8.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Book2",
  dependencies:  ["PerfectHTTPServer", "WebSocket", "ObjectMapper", "Jobs"]),
    ]
)
