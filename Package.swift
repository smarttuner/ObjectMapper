import PackageDescription

let package = Package(name: "ObjectMapper",
                      platforms: [.macOS(.v10_12),
                                  .iOS(.v10),
                                  .tvOS(.v10),
                                  .watchOS(.v3)],
                      products: [.library(name: "ObjectMapper",
                                          targets: ["ObjectMapper"])],
                      targets: [.target(name: "ObjectMapper",
                                        path: "Source"),
                                .testTarget(name: "ObjectMapperTests",
                                            dependencies: ["Alamofire"],
                                            path: "Tests")],
                      swiftLanguageVersions: [.v5])
