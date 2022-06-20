//
//  NewsTableViewCell.swift
//  WhatTheNews
//
//  Created by SaniyeTOY on 18.06.2022.
//

import UIKit

class NewsListTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let margins = UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4)
        contentView.frame = contentView.frame.inset(by: margins)
        contentView.layer.cornerRadius = 8
        //contentView.backgroundColor = UIColor.red
        contentView.layer.borderColor = UIColor.lightGray.cgColor
        contentView.layer.borderWidth = 0.5
        contentView.clipsToBounds = true
     
    }
    
    func register(news: Articles){
        titleLabel.text = news.title
        nameLabel.text = news.source?.name
    }
}
