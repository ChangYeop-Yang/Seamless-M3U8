// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

/*
 * Copyright (c) 2024 M3U8 Monster. All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

// swiftlint:disable all
import PackageDescription

// The configuration of a Swift package.
let package = Package(
    // The name of the Swift package.
    name: PackageDescriptionInfo.PackageName,
    // The list of minimum versions for platforms supported by the package.
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: PackageDescriptionInfo.PackageName,
            targets: ["M3U8-Monster"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: PackageDescriptionInfo.PackageName, path: PackageDescriptionInfo.PackagePath),
        .testTarget(
            name: "M3U8-MonsterTests",
            dependencies: ["M3U8-Monster"]
        ),
    ]
)

// MARK: - Struct
public struct PackageDescriptionInfo {
    
    // MARK: String Properties
    public static let PackageName: String = "M3U8-Monster"
    
    public static let PackagePath: String = "Sources"
}