//
//  TextFieldDefault.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 22/11/23.
//

import Foundation
import UIKit

class TextFieldDefault : UITextField {
    
  //  init (text: String) {
   //     super.init(frame: .zero)
   //     initTextFieldDefault(text: text)

  //  }
    
    init(text: String, keyboardType: UIKeyboardType, returnKeyType: UIReturnKeyType ) {
              super.init(frame: .zero)
    
        initTextFieldDefault (text: text, keyboardType: keyboardType, returnKeyType: returnKeyType)
            
          }
    
  //private func initTextFieldDefault (text: String) {
    private func initTextFieldDefault (text: String, keyboardType: UIKeyboardType, returnKeyType: UIReturnKeyType) {
        self.placeholder = text
        self.backgroundColor = .textFieldBackgroudCollor
        self.layer.cornerRadius = 12
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
