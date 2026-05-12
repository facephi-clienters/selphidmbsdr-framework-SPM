// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FPhiSelphIDWidgetiOS",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FPhiSelphIDWidgetiOS",
            targets: ["selphidmbsdr-framework-SPM", "FPhiSelphIDWidgetiOS"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "git@github.com:facephi-clienters/SDK-ZipZap-SPM.git", from: "1.0.0"),
        .package(url: "git@github.com:facephi-clienters/FPhiMBWidgetiOS-framework.git", from: "6.13.1"),
        .package(url: "git@github.com:facephi-clienters/FPHISelphidDocumentReaderBundle-SPM.git", from: "2.1.0")
        
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "selphidmbsdr-framework-SPM",
            dependencies: [
                "FPhiSelphIDWidgetiOS",
                .product(name: "FPhiZipZap", package: "SDK-ZipZap-SPM"),
                .product(name: "FPhiMBWidgetiOS", package: "FPhiMBWidgetiOS-framework"),
                .product(name: "FPHISelphidDocumentReaderBundle-SPM", package: "FPHISelphidDocumentReaderBundle-SPM"),
            ],
            resources: [.process("Resources")]),
        .binaryTarget(name: "FPhiSelphIDWidgetiOS",
        url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/Selphid/FPhiSelphIDWidgetiOSMBSDR/1.39.0/FPhiSelphIDWidgetiOSMBSDR.zip",
        checksum: "db516095c406a9616a27ffa204781ffc3e01ecb8cf16827c4a4d95d96fdbf04c"),
        
    ]
)
        
