//
//  New.swift
//  SwiftMars
//
//  Created by chenkai on 2017/4/1.
//  Copyright © 2017年 chenkai. All rights reserved.
//

import Foundation
import SwiftyJSON
import Moya_SwiftyJSONMapper

struct New: ALSwiftyJSONAble {
    var title: String?
    var fullTitle: String?
    
    init?(jsonData: JSON) {
        self.title = jsonData["title"].string
        self.fullTitle = jsonData["full_title"].string
    }
}
