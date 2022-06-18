//
//  NewsListUseCases.swift
//  WhatTheNews
//
//  Created by SaniyeTOY on 18.06.2022.
//

import Foundation
import Foundation

protocol GlobalTokenUseCaseType {
    
    func getNewsList(params: [String: Any], completion: @escaping ((Result<NewsResponseModel, Error>) -> Void))
}

struct GlobalTokenUseCase: GlobalTokenUseCaseType {
    func getNewsList(params: [String: Any], completion: @escaping ((Result<NewsResponseModel, Error>) -> Void)) {
        ApiClient.request(NewsEndPoint.newsList(params: params)) {(_ result: Result<NewsResponseModel, Error>) in
            completion(result)
        }
    }
}
