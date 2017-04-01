//
//  BasicEngine.swift
//  SwiftMars
//
//  Created by chenkai on 2017/1/10.
//  Copyright © 2017年 chenkai. All rights reserved.
//

import Foundation
import Moya
import RxSwift
import Alamofire

public enum Github{
    case userProfile(String)
    case userRepositories(String)
}

extension Github: TargetType{
    public var baseURL: URL{return URL.init(string: "http://api.github.com")!}
    public var path: String{
        switch self {
        case .userProfile(let name):
            return "/users/\(name)"
        case .userRepositories(let repName):
            return "/users/\(repName)/repos"
        }
    }
    
    public var method: Moya.Method{
        return .get
    }
    
    public var parameters: [String: Any]?{
        switch self {
        case .userRepositories(_):
            return ["sort":"pushed"]
        default:
            return nil
        }
    }
    
    public var parameterEncoding: ParameterEncoding{
        return URLEncoding.default
    }
    
    public var task: Task{
        return .request
    }
    
    public var validate: Bool{
        return false
    }
    
    public var sampleData: Data {
        switch self {
        case .userProfile(_):
            return "[{\"name\": \"Repo Name\"}]".data(using: String.Encoding.utf8)!
        case .userRepositories(_):
            return "[{\"name\": \"Repo Name\"}]".data(using: String.Encoding.utf8)!
        }
    }

}
