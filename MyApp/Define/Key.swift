//
//  Config.swift
//  MyApp
//
//  Created by DaoNV on 3/20/17.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
//

/**
 This file defines all third party keys which are used in this application.
 Please group them by vendor.
 */

import Foundation

extension Define {
    struct Key { }
}

extension Define.Key {
    struct Google {
        static var apiPublicKey: String { return "publicKey" }
        static var apiSecretKey: String { return "secretKey" }
    }

    struct Facebook {
        static var apiPublicKey: String { return "publicKey" }
        static var apiSecretKey: String { return "secretKey" }
    }
}
