//
//  HomeViewController.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 24/11/23.
//

import Foundation
import UIKit


class HomeViewController: UIViewController{
    
    let viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var homeView: HomeView = {
        let homeView = HomeView(viewModel: viewModel)
        
        return homeView
    }()
    
    override func loadView() {
        self.view = homeView
    }
    
    @objc func handleAdd() {
        viewModel.didTapAdd()
    }
    
  /*  var viewMain = HomeView()
    
    override func loadView() {
        // define que a nova tela a ser chamada será a Homeview
        
        self.view = viewMain
    }  */
    
    // é executada quando est[a carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Ocorrências"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    //    Esconder o botáo de voltar
    //    self.navigationItem.setHidesBackButton(true, animated: false)
        
        
      refreshData()
        
        
        navigationItem.rightBarButtonItem = .init(title: "Nova Ocorrência", style: .plain, target: self, action: #selector(handleAdd))
    }
    
    
}
