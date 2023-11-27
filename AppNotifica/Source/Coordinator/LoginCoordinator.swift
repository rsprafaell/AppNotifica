//
//  LoginCoordinator.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 10/11/23.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator{
    
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
  //  func start() {
      
    /*
        let ViewController = LoginViewController()
        ViewController.onRegisterTap = gotoRegisterTap
        
        self.navigationController.pushViewController(ViewController, animated: true)
        
        ViewController.onLogarTap = gotoLogarTap
        self.navigationController.pushViewController(ViewController, animated: true)
    } */
        
        func start() {
            let viewController = LoginViewController()
            
            self.navigationController.pushViewController(viewController, animated: true)
            
            viewController.onRegisterTap = {
                self.gotoRegister()
            }
            
            viewController.onLogarTap = {
                self.gotoLogar()
            }
            
            
        }
        
        
    private func gotoRegister() {
      //  let ViewController = RegisterViewController()
      //  self.navigationController.pushViewController(ViewController, animated: true)
        let coordinator = RegisterCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    private func gotoLogar() {
   //     let ViewController = HomeViewController()
    //    self.navigationController.pushViewController(ViewController, animated: true)
        let coordinator = HomeCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}
