//
//  NewsTableViewCell.swift
//  WhatTheNews
//
//  Created by SaniyeTOY on 18.06.2022.
//

import UIKit

class NewsListTableViewCell: UITableViewCell {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func register(news: Articles){
        titleLabel.text = news.title
        descriptionLabel.text = news.description
    }
}
