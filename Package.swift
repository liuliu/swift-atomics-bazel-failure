// swift-tools-version:5.4
//===----------------------------------------------------------------------===//
//
// This source file is part of the SwiftNIO open source project
//
// Copyright (c) 2017-2021 Apple Inc. and the SwiftNIO project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of SwiftNIO project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import PackageDescription

let swiftAtomics: PackageDescription.Target.Dependency = .product(name: "Atomics", package: "swift-atomics")

var targets: [PackageDescription.Target] = [
    .executableTarget(name: "atomic",
                      dependencies: [swiftAtomics],
                      path: "examples/atomic",
                      sources: ["main.swift"]
                      ),
]

let package = Package(
    name: "swift-atomics-bazel-failure",
    dependencies: [
        .package(url: "https://github.com/apple/swift-atomics.git", from: "1.0.2"),
    ],
    targets: targets
)
