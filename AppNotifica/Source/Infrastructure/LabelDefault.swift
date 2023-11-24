//
//  LabelDefault.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 20/11/23.
//

import Foundation
import UIKit

class LabelDefault: UILabel{
    
    init(text:String, numberOfLines: Int = 0){
        super.init(frame: .zero)
        initDefault(text: text, fontName: "SFProDisplay-Light", fontSize: 17, numberOfLines: numberOfLines)
    }
    init(text: String, fontName: String, fontSize: CGFloat, numberOfLines: Int = 0){
        super.init(frame: .zero)
        initDefault(text: text, fontName: fontName, fontSize: fontSize, numberOfLines: numberOfLines)
        
    }
    
    private func initDefault(text: String, fontName: String, fontSize: CGFloat, numberOfLines: Int) {
        self.text = text
        self.textColor = .textLabelCollor
       // self.textColor = UIColor(red: 138/255, green: 255/255, blue: 142/255,  alpha: 1)
        
        if let font = UIFont(name: fontName, size: fontSize) {
            self.font = font
        } else {
            self.font = UIFont.systemFont(ofSize: fontSize)
        }
        self.numberOfLines = numberOfLines
        // self.font = UIfont(name: "SFProDisplay-Light", size: 17)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

