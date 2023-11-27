//
//  ViewControllerDefault.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 27/11/23.
//

import Foundation
import UIKit

class ViewControllerDefault: UIViewController {
    
    // é executado quando está carregando
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.prefersLargeTitles=true
        
        // self.navigationItem.setHidesBackButton(true, animated: false)
    }
}
