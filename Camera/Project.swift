import ProjectDescription

let project = Project(
    name: "Camera",
    targets: [
        .target(
            name: "Camera",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.mandos.HealthStamp.Camera",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "TimeStamp", path: "../TimeStamp")
            ]
        ),
        .target(
            name: "CameraTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.mandos.HealthStamp.CameraTests",
            infoPlist: .default,
            sources: ["Tests/**"],
            dependencies: [.target(name: "Camera")]
        ),
    ]
)