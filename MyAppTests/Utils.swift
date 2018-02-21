//
//  Utils.swift
//  MyApp
//
//  Created by iOSTeam on 2/21/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Alamofire

@testable import MyApp

struct Timeout {
    static var forRequest: TimeInterval {
        return Alamofire.SessionManager.default.session.configuration.timeoutIntervalForRequest
    }

    static var forResource: TimeInterval {
        return Alamofire.SessionManager.default.session.configuration.timeoutIntervalForResource
    }
}
