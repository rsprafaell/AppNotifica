//
//  LoginViewController.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 10/11/23.
//

import Foundation
import UIKit

class LoginViewController: ViewControllerDefault{
    
// MARK: - Closures REGISTRAR
    var  onRegisterTap: (() -> Void)?
    var  onLogarTap: (() -> Void)?
    
    
   lazy var loginView: LoginView = {
        let loginview = LoginView()
    //    view.onRegisterTap = self.onRegisterTap
       loginview.onRegisterTap = {
           self.onRegisterTap?()
       }
       
      loginview.onLogarTap = {
          self.onLogarTap?()
      }
       
        return loginview
       
    }()
    
    override func loadView() {
        self.view = loginView
    }
    
 
    
    
  /*  // variavel recebendo a tela de login
    var viewMain = LoginView()
    override func loadView() {
        // define que a nova tela a ser chamada será a loginview
        
        self.view = viewMain 
   }*/
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"
        
        // já tá no Default:
        //self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
