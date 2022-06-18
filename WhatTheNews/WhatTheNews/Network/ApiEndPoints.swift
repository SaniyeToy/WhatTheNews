//
//  ApiEndPoints.swift
//  WhatTheNews
//
//  Created by Monterey on 9.06.2022.
//

import Foundation
import Alamofire

enum NewsEndPoint: APIConfiguration {
    
    case newsList(params: [String: Any])
   
    
    var newsUrl : String { "v2/top-headlines" }
    
    var method: HTTPMethod {
        switch self {
        case .newsList:
            return .get
        
        }
    }
    
    var path: String {
        switch self {
        case .newsList:
            return newsUrl
     
        }
    }
    
    var parameters: Parameters? {
        switch self {
        case .newsList(let params):
            return params
     
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        
        let baseUrl = try ServiceConstant.baseUrl.rawValue.asURL()
        
        var urlRequest = URLRequest(url: baseUrl.appendingPathComponent(path))
        
        // HTTP Method
        urlRequest.httpMethod = method.rawValue
        
        // Parameters
        var encoding: ParameterEncoding { URLEncoding.default }
        print(urlRequest)
        return try encoding.encode(urlRequest, with: parameters)
    }
}
