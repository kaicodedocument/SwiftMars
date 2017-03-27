//
//  ErrorInfo.swift
//  SwiftMars
//
//  Created by chenkai on 2017/3/27.
//  Copyright © 2017年 chenkai. All rights reserved.
//

import Foundation
import ObjectMapper

struct ErrorInfo: Mappable {
    var code:String?
    var error_message:String?
    var error_type:String?
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        code <- map["code"]
        error_message <- map["error_message"]
        error_type <- map["error_type"]
    }
}
