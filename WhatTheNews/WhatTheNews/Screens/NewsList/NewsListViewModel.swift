//
//  NewsListViewModel.swift
//  WhatTheNews
//
//  Created by SaniyeTOY on 18.06.2022.
//

import Foundation

protocol NewsListViewModel{
    func fetchNewsList()
    var delegate: NewsListDisplayDelegate? { get set }
}

protocol NewsListDisplayDelegate: AnyObject {
    func displayNews(newsList: [Articles])
}
