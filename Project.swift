import ProjectDescription

let project = Project(
    name: "HealthStamp",
    targets: [
        .target(
            name: "HealthStamp",
            destinations: .iOS,
            product: .app,
            bundleId: "com.mandos.HealthStamp",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["HealthStamp/Sources/**"],
            resources: ["HealthStamp/Resources/**"],
            dependencies: [
                .project(target: "TimeStamp", path: "TimeStamp"),
                .project(target: "Camera", path: "Camera")
            ]
        ),
        .target(
            name: "HealthStampTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.mandos.HealthStampTests",
            infoPlist: .default,
            sources: ["HealthStamp/Tests/**"],
            resources: [],
            dependencies: [.target(name: "HealthStamp")]
        ),
    ]
)
