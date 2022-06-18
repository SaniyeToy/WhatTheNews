//
//  SplashViewController.swift
//  WhatTheNews
//
//  Created by SaniyeTOY on 18.06.2022.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {[self] in
            let builder = NewsListBuilder()
            builder.build().modalPresentationStyle = .fullScreen
            self.navigationController?.pushViewController(builder.build(), animated: true)
        }
    }
}
