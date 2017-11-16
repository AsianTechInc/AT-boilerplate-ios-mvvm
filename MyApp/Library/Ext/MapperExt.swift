//
//  Mapper.swift
//  MyApp
//
//  Created by DaoNV on 3/17/17.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
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
                guard let _ = json as? JSObject else {
                    completion(.failure(Api.Error.json))
                    return
                }
                completion(.success(json))
            case .array:
                guard let _ = json as? JSArray else {
                    completion(.failure(Api.Error.json))
                    return
                }
                completion(.success(json))
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
