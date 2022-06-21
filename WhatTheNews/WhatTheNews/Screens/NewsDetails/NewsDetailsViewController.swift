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
    
    @IBOutlet weak var newsDetailsDescriptionTextView: UITextView!
    @IBOutlet weak var newsDetailsTitleLabel: UILabel!
    @IBOutlet weak var newsDetailsUrlLabel: UILabel!
    @IBOutlet weak var newsDetailsImageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.topItem?.title = ""
        self.title = "News Details"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDetails()
    }
    
    func setupDetails() {
        newsDetailsTitleLabel?.text = viewModel?.newsDetails?.title
        newsDetailsDescriptionTextView?.text = viewModel?.newsDetails?.description
        newsDetailsDescriptionTextView.isEditable = false
        newsDetailsImageView?.kf.setImage(with: URL(string: (viewModel?.newsDetails?.urlToImage) ?? ""))
        newsDetailsUrlLabel.addTapGesture { [self] in
            if let url = URL(string: (viewModel?.newsDetails?.url)!) {
                UIApplication.shared.open(url)
            }
        }
    }
}
