//
//  DictionaryExt.swift
//  MyApp
//
//  Created by Quang Nguyen K. on 12/4/19.
//  Copyright © 2019 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation

extension Dictionary {

    static func + (lhs: [Key: Value], rhs: [Key: Value]?) -> [Key: Value] {
        var result = lhs
        rhs?.forEach { result[$0] = $1 }
        return result
    }
}
