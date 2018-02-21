//
//  Mapper.swift
//  MyApp
//
//  Created by iOSTeam on 2/21/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper

extension Mapper {
    func map(result: Result<Any>, type: DataType, completion: Completion) {
        switch result {
        case .success(let json):
            switch type {
            case .object:
                if let json = json as? JSObject {
                    completion(.success(json))
                } else {
                    completion(.failure(Api.Error.json))
                }
            case .array:
                if let json = json as? JSArray {
                    completion(.success(json))
                } else {
                    completion(.failure(Api.Error.json))
                }
            }
        case .failure(let error):
            completion(.failure(error))
        }
    }
}

enum DataType {
    case object
    case array
}
