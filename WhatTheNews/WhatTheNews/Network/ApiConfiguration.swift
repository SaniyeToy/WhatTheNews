//
//  ApiConfiguration.swift
//  WhatTheNews
//
//  Created by Monterey on 9.06.2022.
//

import Foundation
import Alamofire

protocol APIConfiguration: URLRequestConvertible {
    var method: HTTPMethod { get }
    var path: String { get }
    var parameters: Parameters? { get }
}
