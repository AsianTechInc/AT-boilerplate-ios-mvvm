//
//  ResponseSerializer.swift
//  MyApp
//
//  Created by iOSTeam on 2/21/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

import Alamofire
import ObjectMapper
import SwiftUtils

extension Request {
    static func responseJSONSerializer(log: Bool = true,
                                       response: HTTPURLResponse?,
                                       data: Data?,
                                       error: Error?) -> Result<Any> {
        guard let response = response else {
            if let error = error {
                let errorCode = error.code
                if abs(errorCode) == Api.Error.cancelRequest.code { // code is 999 or -999
                    return .failure(Api.Error.cancelRequest)
                }
                return .failure(error)
            }
            return .failure(Api.Error.noResponse)
        }

        let statusCode = response.statusCode

        if let error = error {
            return .failure(error)
        }

        if 204...205 ~= statusCode { // empty data status code
            return .success([:])
        }

        guard 200...299 ~= statusCode else {
            // Cancel request
            if statusCode == Api.Error.cancelRequest.code {
                return .failure(Api.Error.cancelRequest)
            }

            var err: NSError!
            if let json = data?.toJSON() as? JSObject,
                let errors = json["errors"] as? [String],
                !errors.isEmpty {
                let message = errors.reduce("", { $0 + $1 + "\n" }).trimmed
                err = NSError(code: statusCode, message: message)
            } else if let status = HTTPStatus(code: statusCode) {
                err = NSError(domain: Api.Path.baseURL.host, status: status)
            } else {
                err = NSError(domain: Api.Path.baseURL.host,
                              code: statusCode,
                              message: "Unknown HTTP status code received (\(statusCode)).")
            }
            #if DEBUG
                print("------------------------")
                print("Request: \(String(describing: response.url))")
                print("Error: \(err.code) - \(err.localizedDescription)")
            #endif
            return .failure(err)
        }

        guard let data = data, let json = data.toJSON() else {
            return Result.failure(Api.Error.json)
        }

        return .success(json)
    }
}

extension DataRequest {
    static func responseSerializer() -> DataResponseSerializer<Any> {
        return DataResponseSerializer { _, response, data, error in
            return Request.responseJSONSerializer(log: true,
                                                  response: response,
                                                  data: data,
                                                  error: error)
        }
    }

    @discardableResult
    func responseJSON(queue: DispatchQueue = .global(qos: .background),
                      completion: @escaping (DataResponse<Any>) -> Void) -> Self {
        return response(queue: queue,
                        responseSerializer: DataRequest.responseSerializer(),
                        completionHandler: completion)
    }
}
