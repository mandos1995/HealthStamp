import ProjectDescription

let project = Project(
    name: "TimeStamp",
    targets: [
        .target(
            name: "TimeStamp",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.mandos.HealthStamp.TimeStamp",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: []
        ),
        .target(
            name: "TimeStampTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.mandos.HealthStamp.TimeStampTests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [.target(name: "TimeStamp")]
        ),
    ]
)