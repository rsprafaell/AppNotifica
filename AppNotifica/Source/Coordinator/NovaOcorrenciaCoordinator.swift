//
//  NovaOcorrenciaCoordinator.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 04/12/23.
//

import Foundation
import UIKit

class NovaOcorrenciaCoordinator: Coordinator {
    
    private let navigationController: UINavigationController
    
   
 /* tirou e alterou o home coordinator
    lazy var novaOcorrenciaViewController: NovaOcorrenciaViewController = {
        
        
       // let viewController = NovaOcorrenciaViewController()
        
        let viewModel = NovaOcorrenciaViewModel(coordinator: self)
        let viewController = NovaOcorrenciaViewController(viewModel: viewModel)
        
        //adiciona o nome home na tabbar
        viewController.tabBarItem.title = "Novo"
        viewController.tabBarItem.image = UIImage(systemName: "note.text.badge.plus")
        return viewController
    }()
    */
    
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
}
