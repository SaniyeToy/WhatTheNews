//
//  NewsListBuilder.swift
//  WhatTheNews
//
//  Created by SaniyeTOY on 18.06.2022.
//

import Foundation
import UIKit

class NewsListBuilder {
  
    func build() -> NewsListViewController {
        let viewController = UIStoryboard(name: "NewsList", bundle: nil).instantiateViewController(withIdentifier: "NewsList") as! NewsListViewController
        viewController.viewModel = NewsListViewModelImpl(service: NewsListUseCase())
        return viewController
    }
}
