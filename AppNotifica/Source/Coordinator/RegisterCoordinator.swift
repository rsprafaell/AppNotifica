//
//  RegisterCoordinator.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 20/11/23.
//

import Foundation
import UIKit

class RegisterCoordinator: Coordinator{
    
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let ViewController = RegisterViewController()
        self.navigationController.pushViewController(ViewController, animated: true)
        
       // ViewController.onLoginTap = goToLogin()
    }
    
    func goToLogin() {
        
        self.navigationController.popViewController(animated: true)
    }
}
