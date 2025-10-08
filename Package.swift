// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "LeetCodeSolutions",
    platforms: [.macOS(.v13)],
    products: [
      .library(name: "LeetCodeSolutions", targets: ["LeetCodeSolutions"]),
      .executable(name: "Sandbox", targets: ["Sandbox"])
    ],
    targets: [
      .target(
        name: "LeetCodeSolutions",
        path: "Sources/LeetCodeSolutions"
      ),
      .executableTarget(
        name: "Sandbox",
        dependencies: ["LeetCodeSolutions"],
        path: "Sources/Sandbox"
      ),
      .testTarget(
        name: "LeetCodeSolutionsTests",
        dependencies: ["LeetCodeSolutions"],
        path: "Tests/LeetCodeSolutionsTests"
      )
    ]
)
