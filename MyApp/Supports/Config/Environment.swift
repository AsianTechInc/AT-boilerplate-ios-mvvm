//
//  Environment.swift
//  MyApp
//
//  Created by Dai Ho V. on 5/14/20.
//  Copyright © 2020 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation

public enum Environment {
    // MARK: - Keys
    enum Keys {
        static let baseURL = "BASE_URL"
    }

    // MARK: - Plist
    private static let infoDictionary: [String: Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("Plist file not found")
        }
        return dict
    }()

    // MARK: - Plist values
    static let baseURL: URL = {
        guard let stringValue = Environment.infoDictionary[Keys.baseURL] as? String else {
            fatalError("Root URL not set in plist for this environment")
        }
        guard let value = URL(string: stringValue) else {
            fatalError("Root URL is invalid")
        }
        return value
    }()
}
