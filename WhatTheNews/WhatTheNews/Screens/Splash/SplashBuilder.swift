//
//  SplashBuilder.swift
//  WhatTheNews
//
//  Created by SaniyeTOY on 18.06.2022.
//

import Foundation
import UIKit

class SplashBuilder {
    static func build() -> SplashViewController {
         let viewController = UIStoryboard(name: "Splash", bundle: nil).instantiateViewController(withIdentifier: "Splash") as! SplashViewController
        return viewController
    }
}
