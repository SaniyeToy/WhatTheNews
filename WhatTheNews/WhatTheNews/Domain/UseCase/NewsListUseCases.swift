//
//  NewsListUseCases.swift
//  WhatTheNews
//
//  Created by SaniyeTOY on 18.06.2022.
//

import Foundation
import Foundation

protocol NewsListUseCaseType {
    
    func getNewsList(params: [String: Any], completion: @escaping ((Result<NewsResponseModel, Error>) -> Void))
}

struct NewsListUseCase: NewsListUseCaseType {
    func getNewsList(params: [String: Any], completion: @escaping ((Result<NewsResponseModel, Error>) -> Void)) {
        ApiClient.request(NewsEndPoint.newsList(params: params)) {(_ result: Result<NewsResponseModel, Error>) in
            completion(result)
        }
    }
}
