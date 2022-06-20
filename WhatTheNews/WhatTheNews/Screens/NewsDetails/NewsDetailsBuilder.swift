//
//  NewsDetailsBuilder.swift
//  WhatTheNews
//
//  Created by SaniyeTOY on 19.06.2022.
//

import Foundation
import UIKit

class NewsDetailsDetailsBuilder {
    private let newsdetails : Articles
    init(newsdetails: Articles) {
        self.newsdetails = newsdetails
    }
    
    func build() -> NewsDetailsViewController {
        let viewController = UIStoryboard(name: "NewsDetails", bundle: nil).instantiateViewController(withIdentifier: "NewsDetails") as! NewsDetailsViewController
        viewController.viewModel = NewsDetailsViewModelImpl(newsdetails: newsdetails)
        return viewController
    }
}
