//
//  NewsListViewController.swift
//  WhatTheNews
//
//  Created by SaniyeTOY on 18.06.2022.
//

import Foundation
import UIKit
import Kingfisher
class NewsListViewController: UIViewController {
   
    var viewModel: NewsListViewModel?
    var newsList: [Articles]?
    
    @IBOutlet weak var newsListTableView: UITableView!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.setHidesBackButton(true, animated: true)
        self.title = "News"
        navigationController?.navigationBar.prefersLargeTitles = true
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.systemRed
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel?.delegate = self
        newsListTableView.register(UINib(nibName: "NewsListTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }

    func navigateToDetails(index: Int){
        let builder = NewsDetailsDetailsBuilder(newsdetails: newsList![index])
        builder.build().modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(builder.build(), animated: true)
    }
}

//MARK: NewsListDisplayDelegate
extension NewsListViewController: NewsListDisplayDelegate {
    func displayNews(newsList: [Articles]) {
        self.newsList = newsList
        newsListTableView.reloadData()
    }
}

//MARK: UITableViewDelegate
extension NewsListViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.navigateToDetails(index: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

//MARK: UITableViewDataSource
extension NewsListViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = newsListTableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as? NewsListTableViewCell else {return UITableViewCell() }
        cell.register(news: (newsList?[indexPath.row])!)
        return cell
    }
}
