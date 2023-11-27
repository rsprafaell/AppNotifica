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
        let viewController = RegisterViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onLoginTap = {
            self.gotoLogin()
        }
        
    }
        
    func gotoLogin() {
            
       self.navigationController.popViewController(animated: true)
      
        
        }

    
}
