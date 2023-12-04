//
//  HomeViewController.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 24/11/23.
//

import Foundation
import UIKit


class HomeViewController: UIViewController{
    
    lazy var homeview: HomeView = {
        let homeView = HomeView()
        
        return homeView
    }()
    
    override func loadView() {
        self.view = homeview
    }
    
    
  /*  var viewMain = HomeView()
    
    override func loadView() {
        // define que a nova tela a ser chamada será a Homeview
        
        self.view = viewMain
    }  */
    
    // é executada quando est[a carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    //    self.navigationItem.setHidesBackButton(true, animated: false)
    }
    
    
}
