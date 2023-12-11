//
//  NovaOcorrenciaViewModel.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 06/12/23.
//

import Foundation
import UIKit

class NovaOcorrenciaViewModel {
    
    var coordinator: HomeCoordinator
    
    init(coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }
    
    func didTapSave(ocorrencia: Ocorrencia) {
        DataManager.shared.add(ocorrencia: ocorrencia)
        coordinator.continueAfterNovaOcorrencia()
    }
}
