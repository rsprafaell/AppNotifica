//
//  RegisterView.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 20/11/23.
//

import Foundation
import UIKit

class RegisterView: UIView {

// MARK: - Initializers
    
    var  onLoginTap: (() -> Void)?
    
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
    
// MARK: - Setup Visual Elements
    
    func setupVisualElement() {
        
        let imageLabel = LabelDefault(text: "Entre com seu e-mail e crie uma senha para se registrar!", fontName: "", fontSize: 30)
        
        // cria funçao com as propriedades da caixa de texto email
        let emailTextField: UITextField = {
            let textField = UITextField()
        //  textField.backgroundColor = .white
            textField.backgroundColor = .textFieldBackgroudCollor
            textField.placeholder = "E-mail"
            textField.layer.cornerRadius = 12
            textField.translatesAutoresizingMaskIntoConstraints = false
            
            return textField
        }()
        
        // cria funçao com as propriedades da caixa de texto senha
        let senhaTextField: UITextField = {
            let textField = UITextField()
          //  textField.backgroundColor = .white
            textField.backgroundColor = .textFieldBackgroudCollor
            textField.placeholder = "Senha"
            textField.layer.cornerRadius = 12
            textField.translatesAutoresizingMaskIntoConstraints = false
            
            return textField
        }()
        
        let confirmaSenhaTextField: UITextField = {
            let textField = UITextField()
          //  textField.backgroundColor = .white
            textField.backgroundColor = .textFieldBackgroudCollor
            textField.placeholder = "Confirme a Senha"
            textField.layer.cornerRadius = 12
            textField.translatesAutoresizingMaskIntoConstraints = false
            
            return textField
        }()
        
        // cria funçao com as propriedades do botao logar
        let logarButton: UIButton = {
            let button = UIButton()
            button.backgroundColor = UIColor(red: 94/255, green: 163/255, blue: 163/255, alpha: 1)
            button.setTitle("Logar", for: .normal)
            button.layer.cornerRadius = 12
            button.translatesAutoresizingMaskIntoConstraints = false
            
            return button
        }()
        
        // cria funçao com as propriedades do botao registrar
        let registrarButton: UIButton = {
            let button = UIButton()
            //button.backgroundColor = UIColor(red: 94/255, green: 163/255, blue: 163/255, alpha: 1)
            button.backgroundColor = .buttonBackgroundCollor
            button.setTitle("Registrar", for: .normal)
            button.layer.cornerRadius = 12
            button.translatesAutoresizingMaskIntoConstraints = false
            
            return button
        }()
        
        // adiciona todos os elementos visuais a view
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(confirmaSenhaTextField)
        self.addSubview(logarButton)
        self.addSubview(registrarButton)
        
        logarButton.addTarget(self, action: #selector(loginTap), for: .touchUpInside)

        
        // configura as restriçoes de layout para todos os elementos visuais
        NSLayoutConstraint.activate([
      
        //restriçoes para o layout da label
            imageLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
        //restriçoes para o layout caixa texto email
            emailTextField.widthAnchor.constraint(equalToConstant: 374),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            emailTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 70),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
        
        //restriçoes para o layout caixa texto senha
            senhaTextField.widthAnchor.constraint(equalToConstant: 374),
            senhaTextField.heightAnchor.constraint(equalToConstant: 60),
            senhaTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 25),
            senhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            senhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
           
            confirmaSenhaTextField.widthAnchor.constraint(equalToConstant: 374),
            confirmaSenhaTextField.heightAnchor.constraint(equalToConstant: 60),
            confirmaSenhaTextField.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 25),
            confirmaSenhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            confirmaSenhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            
        //restriçoes para o layout botao registrar
            registrarButton.topAnchor.constraint(equalTo: confirmaSenhaTextField.bottomAnchor, constant: 70),
            registrarButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 70),
            registrarButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -70),
            registrarButton.heightAnchor.constraint(equalToConstant: 50),
            
            
        //restriçoes para o layout botao logar
            logarButton.topAnchor.constraint(equalTo: registrarButton.bottomAnchor, constant: 25),
            logarButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 70),
            logarButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -70),
            logarButton.heightAnchor.constraint(equalToConstant: 50),
        
         
        ])
    }
  
    // MARK: - Actions BOTAO LOGAR
          @objc private func loginTap() {
              onLoginTap?()
          }
    
}


