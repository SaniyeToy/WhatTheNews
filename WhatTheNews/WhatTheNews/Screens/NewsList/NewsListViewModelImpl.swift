//
//  NewsListViewModelImpl.swift
//  WhatTheNews
//
//  Created by SaniyeTOY on 18.06.2022.
//

import Foundation
import Foundation

class NewsListViewModelImpl: NewsListViewModel{
    
    weak var delegate: NewsListDisplayDelegate?
    var newsList: [Articles]?
    let service: NewsListUseCaseType
    init(service: NewsListUseCaseType) {
        self.service = service
        self.fetchNewsList()
    }
    
    func fetchNewsList() {
        var params: [String: Any] = [:]
        params["apiKey"] = "c49befaba4ab4498a011c607370a88b4"
        params["country"] = "tr"
        service.getNewsList(params: params){ [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let response):
                self.newsList = response.articles
                guard let _ = self.newsList else { return }
                self.delegate?.displayNews(newsList: self.newsList!)
            case .failure(let error):
                print(error)
            }
        }
    }
}
