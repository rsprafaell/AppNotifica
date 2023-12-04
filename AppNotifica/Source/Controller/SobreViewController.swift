//
//  SobreViewController.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 29/11/23.
//

import Foundation
import UIKit

class SobreViewController: ViewControllerDefault {
    
    //MARK: -  Clouseres
    
    //cria uma variável que é do
    lazy var sobreView: SobreView = {
        let sobreView = SobreView()
        return sobreView
    }()
    
    override func loadView(){
        self.view = sobreView
    }
    
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sobre"
    }
}

