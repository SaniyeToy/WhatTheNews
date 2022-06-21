//
//  SplashViewController.swift
//  WhatTheNews
//
//  Created by SaniyeTOY on 18.06.2022.
//

import UIKit
import SwiftGifOrigin

class SplashViewController: UIViewController {

    @IBOutlet weak var splashImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        splashImageView.loadGif(asset: "splash")
        splashImageView.translatesAutoresizingMaskIntoConstraints = false
        splashImageView.contentMode = .scaleAspectFit
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {[self] in
        navigateToNewsList()
        }
    }
    
    func navigateToNewsList(){
        let builder = NewsListBuilder()
        builder.build().modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(builder.build(), animated: true)
    }
}
