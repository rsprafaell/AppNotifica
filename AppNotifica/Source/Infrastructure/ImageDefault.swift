//
//  ImageDefault.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 17/11/23.
//

import Foundation
import UIKit

class ImageDefault: UIImageView {
    init(image: String) {
        super.init(frame: .zero)
        initImageDefault(image: image)
    }
    
    private func initImageDefault (image: String){
        self.image = UIImage(named: image)
        self.contentMode = .scaleAspectFit
        // serve pra gente fazer as configuracoes se n o sistema operacional que vai configurar
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
}


/* func darkModeChanged() {
    // Verificar o modo escuro atual
    let isDarkMode = traitCollection.userInterfaceStyle == .dark

    // Atualizar a imagem com base no modo escuro
    self.image = UIImage(named: isDarkMode ? "logoLoginDark" : "imageLogin")
} */


