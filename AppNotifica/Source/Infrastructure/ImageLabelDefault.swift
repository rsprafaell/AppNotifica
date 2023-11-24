//
//  ImageLabelDefault.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 17/11/23.
//

import Foundation
import UIKit

class ImageLabelDefault: UILabel {
    init(text: String) {
        super.init(frame: .zero)
        initImageLabelDefault(text: text)
        
    }
    
    private func initImageLabelDefault (text: String) {
        self.text = text
        self.textAlignment = .center
        self.textColor = .textLabelCollor
        self.font = UIFont(name: "SFProDisplay-Light", size: 17)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



