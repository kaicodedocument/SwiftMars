//
//  Model.swift
//  SwiftMars
//
//  Created by chenkai on 2017/3/27.
//  Copyright © 2017年 chenkai. All rights reserved.
//

import Foundation
import ObjectMapper

class Model:  Mappable {
    var category: String?
    var name: String?
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        category <- map["category"]
        name <- map["name"]
    }
}

class NewsData: Mappable {
    var version: String?
    var data:[Model]?
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        version <- map["version"]
        data <- map["data"]
    }
}

class NewsResult: Mappable{
    var message: String?
    var data: NewsData?
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        message <- map["version"]
        data <- map["data"]
    }
}
