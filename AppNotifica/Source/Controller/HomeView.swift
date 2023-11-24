//
//  HomeView.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 24/11/23.
//

import Foundation
import UIKit


class HomeView: UIView {
    // MARK: - Initializers
    override init(frame: CGRect) {
        //chama o frame da superclasse
        super.init(frame: frame)
        //  self.backgroundColor = .systemPurple
   
        // define a cor de fundo de acordo com o color set
        self.backgroundColor = .backgroundCollor
        
        setupVisualElement()
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func setupVisualElement() {
     //   setupVisualElement()
    }

}
