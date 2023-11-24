//
//  HomeCoordinator.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 24/11/23.
//

import Foundation
import UIKit

class HomeCoordinator: Coordinator{
    
   private let navigationController: UINavigationController
    
    lazy var homeViewController: HomeViewController = {
        let viewController = HomeViewController()
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let ViewController = HomeViewController()
        self.navigationController.pushViewController(ViewController, animated: true)
    }
}
