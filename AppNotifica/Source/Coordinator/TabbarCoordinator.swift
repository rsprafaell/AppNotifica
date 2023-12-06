//
//  TabbarCoordinator.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 04/12/23.
//

import Foundation
import UIKit

class TabbarCoordinator : Coordinator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    func start() {
        //inicializa o TabbarController
        let tabbarController = TabbarController()
        tabbarController.modalPresentationStyle = .overFullScreen
        //inicializar as views da tabbar homeViewCoordinator
        let homeNavigation = UINavigationController()
        
        let homeViewCoordinator = HomeCoordinator(navigationController: homeNavigation)
        homeViewCoordinator.start()
        
     //   let novaOcorrenciaViewCoordinator = NovaOcorrenciaCoordinator(navigationController: self.navigationController)
        
     //   let sobreViewCoordinator = SobreCoordinator(navigationController: self.navigationController)
        
        let sobreNavigation = UINavigationController()
        
        let sobreViewCoordinator = SobreCoordinator(navigationController: sobreNavigation)
        sobreViewCoordinator.start()
        
        let navigationControllers = [homeNavigation, sobreNavigation]
                
        //passa uma lista de view que serão mostradas na tabbar
       // tabbarController.setViewControllers([homeViewCoordinator.homeViewController, novaOcorrenciaViewCoordinator.novaOcorrenciaViewController,sobreViewCoordinator.sobreViewController], animated: true)
        
       // tabbarController.setViewControllers([homeViewCoordinator.homeViewController,sobreViewCoordinator.sobreViewController], animated: true)
        
        tabbarController.setViewControllers(navigationControllers, animated: true)
        
        self.navigationController.present(tabbarController, animated: true)
    }
}
