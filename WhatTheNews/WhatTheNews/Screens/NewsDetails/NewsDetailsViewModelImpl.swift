//
//  NewsDetailsViewModelImpl.swift
//  WhatTheNews
//
//  Created by SaniyeTOY on 19.06.2022.
//

import Foundation
import Foundation

class NewsDetailsViewModelImpl: NewsDetailsViewModel{
    
    var newsDetails: Articles?
    init(newsdetails: Articles ) {
        self.newsDetails = newsdetails
    }
}
