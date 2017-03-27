//
//  ErrorInfo.swift
//  SwiftMars
//
//  Created by chenkai on 2017/3/27.
//  Copyright © 2017年 chenkai. All rights reserved.
//

import Foundation
import SwiftyJSON
import Moya_SwiftyJSONMapper

struct ErrorInfo: ALSwiftyJSONAble {
    var code:String?
    var error_message:String?
    var error_type:String?
    
    init?(jsonData: JSON) {
        self.code = jsonData["code"].string
        self.error_message = jsonData["error_message"].string
        self.error_type = jsonData["error_type"].string
    }
}
