//
//  NewsResponseModel.swift
//  WhatTheNews
//
//  Created by SaniyeTOY on 18.06.2022.
//

import Foundation

struct NewsResponseModel: Codable {
    let status : String?
    let totalResults : Int?
    let articles : [Articles]?
}
