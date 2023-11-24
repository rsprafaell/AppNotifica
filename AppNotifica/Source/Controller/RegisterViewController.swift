//
//  RegisterViewController.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 20/11/23.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController{
    // variavel recebendo a tela de Registrar
    var viewMain = RegisterView()
    
    override func loadView() {
        // define que a nova tela a ser chamada será a Registerview
        
        self.view = viewMain
    }
    
    // é executada quando est[a carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Registrar"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}

