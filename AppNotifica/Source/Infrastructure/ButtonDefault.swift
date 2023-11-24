//
//  ButtonDefault.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 22/11/23.
//

import Foundation
import UIKit


class ButtonDefault : UIButton {
    
    init (text: String) {
        super.init(frame: .zero)
        initButtonDefault(text: text)
    }
    
    private func initButtonDefault (text: String) {
        //self.backgroundColor = UIColor(red: 94/255, green: 163/255, blue: 163/255, alpha: 1)
        self.backgroundColor = .buttonBackgroundCollor
        self.setTitle(text, for: .normal)
        self.layer.cornerRadius = 12
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
