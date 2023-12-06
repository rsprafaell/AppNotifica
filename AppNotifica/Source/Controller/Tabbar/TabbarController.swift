//
//  TabbarController.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 04/12/23.
//

import Foundation
import UIKit

class TabbarController: UITabBarController {
    
    //sobrescreve o método responsável pro controlar os elementos na tela
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: true)
        
        self.tabBar.tintColor = .buttonBackgroundCollor
        self.tabBar.isTranslucent = true
        UITabBar.appearance().barTintColor = .backgroundCollor
        
    }
}
