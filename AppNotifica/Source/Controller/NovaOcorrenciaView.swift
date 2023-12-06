//
//  NovaOcorrenciaView.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 04/12/23.
//

import Foundation
import UIKit

class NovaOcorrenciaView: ViewDefault {
    //MARK: - Closures
    
    var onCameraTap:(()->Void)?
    
    //MARK: - Inits
    
    //MARK: - Proports
    
    
    lazy var imagem: UIImageView = {
        let view = UIImageView ()
        view.image = UIImage(named: "imagemCamera")
            
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(cameraTap))
                view.addGestureRecognizer(tapGR)
                view.isUserInteractionEnabled = true
        
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        } ()
    
   // caso eu queira incluir algo que náo está no Default, posso fazer assim:
   /* lazy var titleTextField: TextFieldDefault = {
        let text = TextFieldDefault(text: "Título ")
        
        text.keyboardType = .default
        text.returnKeyType = .next
        
        return text
    }() */
    
    lazy var titleTextField = TextFieldDefault(text: "Título", keyboardType: .default, returnKeyType: .next)
    
        
    lazy var descriptionTextField = TextFieldDefault(text: "Descrição ", keyboardType: .default, returnKeyType: .next)
        
    lazy var localizationTextField = TextFieldDefault(text: "Localização ", keyboardType: .default, returnKeyType: .next)
        
    lazy var statusTextField = TextFieldDefault(text: "Status ", keyboardType: .default, returnKeyType: .done)
        
    lazy var saveButton =  ButtonDefault(text: "SALVAR")
        
        
        
    override  func setupVisualElement() {
           
        self.addSubview(imagem)
        self.addSubview(titleTextField)
        self.addSubview(descriptionTextField)
        self.addSubview(localizationTextField)
        self.addSubview(statusTextField)
        self.addSubview(saveButton)
           
           
        NSLayoutConstraint.activate([
        imagem.heightAnchor.constraint(equalToConstant: 200),
        imagem.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
        imagem.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
        imagem.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
           
        titleTextField.widthAnchor.constraint(equalToConstant: 374),
        titleTextField.heightAnchor.constraint(equalToConstant: 60),
        titleTextField.topAnchor.constraint(equalTo: imagem.bottomAnchor, constant: 20),
        titleTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
        titleTextField.trailingAnchor.constraint(equalTo:self.trailingAnchor,constant:  -15),
           
            
        descriptionTextField.widthAnchor.constraint(equalToConstant: 374),
        descriptionTextField.heightAnchor.constraint(equalToConstant: 60),
        descriptionTextField.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 5),
        descriptionTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
        descriptionTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
        localizationTextField.widthAnchor.constraint(equalToConstant: 374),
        localizationTextField.heightAnchor.constraint(equalToConstant: 60),
        localizationTextField.topAnchor.constraint(equalTo: descriptionTextField.bottomAnchor, constant: 5),
        localizationTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
        localizationTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
        statusTextField.widthAnchor.constraint(equalToConstant: 374),
        statusTextField.heightAnchor.constraint(equalToConstant: 60),
        statusTextField.topAnchor.constraint(equalTo: localizationTextField.bottomAnchor, constant: 5),
        statusTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
        statusTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            
        saveButton.widthAnchor.constraint(equalToConstant: 374),
        saveButton.heightAnchor.constraint(equalToConstant: 60),
        saveButton.topAnchor.constraint(equalTo: statusTextField.bottomAnchor, constant: 20),
        saveButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
        saveButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -14),
            
           ])

        }
        
    @objc
      private func cameraTap () {
          self.onCameraTap?()
      }
      
      func setImage (image: UIImage){
          imagem.image = image
      }
    
}
