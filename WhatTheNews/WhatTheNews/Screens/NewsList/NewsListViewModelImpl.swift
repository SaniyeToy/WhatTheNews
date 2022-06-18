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
    var universityList: [Articles]?
    let service: NewsListUseCaseType
    init(service: NewsListUseCaseType) {
        self.service = service
        self.fetchNewsList()
    }
    
    func fetchNewsList() {

    }
}
