//
//  Error.swift
//  MyApp
//
//  Created by iOSTeam on 2/21/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation
import Alamofire
import SwiftUtils

typealias Network = NetworkReachabilityManager

// MARK: - Network
extension Network {
    static let shared: Network = {
        guard let manager = Network() else {
            fatalError("Cannot alloc network reachability manager!")
        }
        return manager
    }()
}

extension Api {
    struct Error {
        static let network = NSError(domain: NSCocoaErrorDomain, message: "The internet connection appears to be offline.")
        static let authen = NSError(domain: Api.Path.baseURL.host, status: HTTPStatus.unauthorized)
        static let json = NSError(domain: NSCocoaErrorDomain, code: 3_840, message: "The operation couldn’t be completed.")
        static let apiKey = NSError(domain: Api.Path.baseURL.host, status: HTTPStatus.badRequest)
        static let cancelRequest = NSError(domain: Api.Path.baseURL.host, code: 999, message: "Server returns no information and closes the connection.")
        static let emptyData = NSError(domain: Api.Path.baseURL.host, code: 997, message: "Server returns no data")
        static let noResponse = NSError(status: .noResponse)
        static let invalidURL = NSError(domain: Api.Path.baseURL.host, code: 998, message: "Cannot detect URL")
    }
}

extension Error {
    func show() {
        let `self` = self as NSError
        self.show()
    }

    public var code: Int {
        let `self` = self as NSError
        return self.code
    }
}

extension NSError {
    func show() { }
}
