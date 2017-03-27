//
//  TouTiaoEngine.swift
//  SwiftMars
//
//  Created by chenkai on 2017/3/27.
//  Copyright © 2017年 chenkai. All rights reserved.
//

import Foundation
import Moya
import RxSwift

let baseUrl = "https://iu.snssdk.com"
let articlePath = "/article/category/get_subscribed/v1/"
let iid = 6253487170

public enum NewsService{
    case categroy
}

extension NewsService: TargetType{
    public var baseURL: URL{return URL.init(string: "https://iu.snssdk.com")!}
    public var path: String{
        switch self {
        case .categroy:
            return articlePath
        }
    }
    
    public var method: Moya.Method{
        switch self {
        case .categroy:
            return .get
        }
    }
    
    public var parameters: [String : Any]?{
        switch self {
        case .categroy:
              return ["iid": iid]
        }
    }
    
    public var parameterEncoding: ParameterEncoding{
        switch self {
        case .categroy:
            return URLEncoding.default
        }
    }
    
    public var task: Task{
        switch self {
        case .categroy:
            return .request
        }
    }
    
    public var validate: Bool{
        return false
    }
    
    public var sampleData: Data{
        switch self {
        case .categroy:
            return "".data(using: String.Encoding.utf8)!
        }
    }
}
