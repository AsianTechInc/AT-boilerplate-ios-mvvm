//
//  URLExt.swift
//  MyApp
//
//  Created by Quang Nguyen K. on 12/4/19.
//  Copyright © 2019 Asian Tech Co., Ltd. All rights reserved.
//

import Foundation

extension URL {

    var imageRequest: NSMutableURLRequest {
        let request = NSMutableURLRequest(url: self)
        request.addValue("image/*", forHTTPHeaderField: "Accept")
        return request
    }
}
