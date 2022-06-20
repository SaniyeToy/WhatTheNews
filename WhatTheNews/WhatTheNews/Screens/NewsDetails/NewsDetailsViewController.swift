//
//  NewsDetailsViewController.swift
//  WhatTheNews
//
//  Created by SaniyeTOY on 19.06.2022.
//

import Foundation
import UIKit
import Kingfisher

class NewsDetailsViewController: UIViewController {

    var viewModel:  NewsDetailsViewModel?
    var news : Articles?
    
    
    @IBOutlet weak var newsDetailsTitleLabel: UILabel!
    @IBOutlet weak var newsDetailsUrlLabel: UILabel!
    @IBOutlet weak var newsDetailsDescriptionLabel: UILabel!
    @IBOutlet weak var newsDetailsImageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.topItem?.title = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDetails()
    }
    
    func setupDetails() {
        newsDetailsTitleLabel?.text = viewModel?.newsDetails?.title
        newsDetailsDescriptionLabel?.text = viewModel?.newsDetails?.description
        newsDetailsUrlLabel?.text = viewModel?.newsDetails?.url
        newsDetailsImageView?.kf.setImage(with: URL(string: (viewModel?.newsDetails?.urlToImage) ?? ""))
    }
}
