//
//  DictionayTests.swift
//  MyApp
//
//  Created by iOSTeam on 2/21/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import XCTest
@testable import MyApp

final class DictionayTests: XCTestCase {
    func testUpdateValues() {
        var json: [String: String] = [
            "first": "John",
            "last": "Smith"
        ]
        let update: [String: String] = [
            "last": "Geogre",
            "age": "30"
        ]
        let expect: [String: String] = [
            "first": "John",
            "last": "Geogre",
            "age": "30"
        ]
        json.updateValues(update)
        XCTAssertEqual(json, expect)
    }
}
