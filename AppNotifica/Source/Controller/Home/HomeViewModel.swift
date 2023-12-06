//
//  HomeViewModel.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 06/12/23.
//

import Foundation
import UIKit

class HomeViewModel {
    
    var coordinator: HomeCoordinator
    
    init(coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }
    
    func didTapAdd(){
        coordinator.presentNovaOcorrencia()
    }
}
