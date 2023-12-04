//
//  ViewDefault.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 29/11/23.
//

import Foundation
import UIKit

class ViewDefault: UIView {
    // MARK: - Initializers
    override init(frame: CGRect) {
        //chama o frame da superclasse
        super.init(frame: frame)
        //  self.backgroundColor = .systemPurple
        
        // define a cor de fundo de acordo com o color set
        self.backgroundColor = .backgroundCollor
        
        setupVisualElement()
        
    }
    
    func setupVisualElement() {
           
       }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
