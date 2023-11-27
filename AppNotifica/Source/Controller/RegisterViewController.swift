//
//  RegisterViewController.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 20/11/23.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController{
    
   // MARK: Closure
    
    var  onLoginTap: (() -> Void)?
    
  lazy var registerView: RegisterView = {
        let registerView = RegisterView()
        
        registerView.onLoginTap = {
            self.onLoginTap?()
        }
        return registerView
    }()
    
    // variavel recebendo a tela de Registrar
   // var viewMain = RegisterView()
    
    override func loadView() {
        // define que a nova tela a ser chamada será a Registerview
        
        self.view = registerView
        
    }
    
   /* deinit{
        print("Destruindo \(type(of: self))")
    } */
    
    
    // é executada quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Registrar"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
    // retira o voltar em cima na tela
    // self.navigationItem.setHidesBackButton(true, animated: false)
        
    }
}

