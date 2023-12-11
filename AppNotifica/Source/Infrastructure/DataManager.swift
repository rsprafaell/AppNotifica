//
//  DataManager.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 11/12/23.
//

import Foundation
import UIKit

class DataManager {
    static var shared = DataManager()
    var ocorrencias: [Ocorrencia] = []
    
    private init() {
        self.ocorrencias = loadData()
        //   self.ocorrencias = []
   
    }
    
    func add(ocorrencia: Ocorrencia) {
        ocorrencias.append(ocorrencia)
     //   let str = "Ocorrência #123"
        if let data = try? JSONEncoder().encode(ocorrencia) {
        UserDefaults.standard.setValue(data, forKey: "DATA_OCORRENCIAS")
            
          //  print(String(data: data,encoding: .utf))
        }
        
    }
    
    func loadData() -> [Ocorrencia] {
        if let data = UserDefaults.standard.data(forKey: "DATA_OCORRENCIAS") {
            do {
                let objects = try JSONDecoder().decode([Ocorrencia].self, from: data)
                return objects
            } catch {
                print (error)
            }
            
        }
        return[]
    }
        
    
}
