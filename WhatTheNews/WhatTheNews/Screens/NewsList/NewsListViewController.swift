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
       newsListTableView.register(UINib(nibName: "NewsListTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        self.navigationItem.setHidesBackButton(true, animated: true)
        self.navigationController?.navigationBar.backgroundColor = .clear
        self.title = "News List"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel?.delegate = self
        newsListTableView.register(UINib(nibName: "NewsListTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    

    func navigateToDetails(){
    }
}

//MARK: NewsListDisplayDelegate
extension NewsListViewController: NewsListDisplayDelegate {
    func displayNews(newsList: [Articles]) {
        self.newsList = newsList
    }
}

//MARK: UITableViewDelegate
extension NewsListViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}


//MARK: UITableViewDataSource
extension NewsListViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = newsListTableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as? NewsListTableViewCell else {return UITableViewCell() }
        guard let _ =  newsList?[indexPath.row].url else { return UITableViewCell()}
        return cell
    }
}
