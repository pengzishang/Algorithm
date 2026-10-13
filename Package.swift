// swift-tools-version: 6.1
import PackageDescription

let package = Package(name: "LeetCodeSolutions",
                      platforms: [.macOS(.v13)],
                      products: [.library(name: "LeetCodeSolutions", targets: ["LeetCodeSolutions"])],
                      targets: [.target(name: "LeetCodeSolutions",
                                        path: "Sources/LeetCodeSolutions"),
                                .testTarget(name: "LeetCodeSolutionsTests",
                                            dependencies: ["LeetCodeSolutions"],
                                            path: "Tests/LeetCodeSolutionsTests")])
