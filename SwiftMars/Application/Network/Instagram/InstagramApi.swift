//
//  InstagramApi.swift
//  SwiftMars
//
//  Created by chenkai on 2017/3/27.
//  Copyright © 2017年 chenkai. All rights reserved.
//

import Foundation
import Moya

public enum Instagram{
    case OAuth
}

extension Instagram: TargetType{
    public var baseURL: URL {return URL.init(string: "https://api.instagram.com/")!}
    public var path: String{
        switch self {
        case .OAuth:
            return "oauth/authorize/"
        }
    }
    
    public var method: Moya.Method{
        switch self {
        case .OAuth:
            return .get
        }
    }
    
    public var parameters: [String:Any]? {
        switch self {
        case .OAuth:
            return ["client_id":INSTAGRAM_CLIENT_ID,"redirect_uri":INSTAGRAM_REDIRECT_URL,"response_type":"code"]
        }
    }
    
    public var parameterEncoding: ParameterEncoding{
        return URLEncoding.default
    }
    
    public var task: Task{
        return .request
    }
    
    public var validate: Bool{
        switch self {
        case .OAuth:
            return false
        }
    }
    
    public var sampleData: Data{
        switch self {
        case .OAuth:
            return "".data(using: String.Encoding.utf8)!
        }
    }
}

