//
//  NewsEngine.swift
//  SwiftMars
//
//  Created by chenkai on 2017/4/1.
//  Copyright © 2017年 chenkai. All rights reserved.
//

import Foundation
import Moya

enum News{
    case TodayHotNews(keyword: String)
}

extension News: TargetType{
    var baseURL: URL{ return URL(string:"http://op.juhe.cn/onebox/")!}
    var path: String{
        switch self {
        case .TodayHotNews:
            return "news/words"
        }
    }
    
    var method: Moya.Method{
        switch self {
        case .TodayHotNews:
            return .get
        }
    }
    
    var parameters: [String:Any]?{
        switch self {
        case .TodayHotNews(let keyword):
            return ["key":"\(keyword)", "dtype":"json"]
        }
    }
    
    var parameterEncoding: ParameterEncoding{
        switch self{
        case .TodayHotNews:
            return URLEncoding.default
        }
    }
    
    var sampleData: Data{
        switch self {
        case .TodayHotNews:
            return Data(base64Encoded: "")!
        }
    }
    
    var task: Task{
        switch self {
        case .TodayHotNews:
            return .request
        }
    }
    
    
    
}
