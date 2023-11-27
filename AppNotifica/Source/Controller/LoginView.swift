//
//  LoginView.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 10/11/23.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    var  onRegisterTap: (() -> Void)?
    var  onLogarTap: (() -> Void)?
    
// MARK: - Initializers
    override init(frame: CGRect) {
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
        
        // Usando o Default:
        
        let loginImage = ImageDefault(image: "imageLogin")
        
        //Usando o Default
        let imageLabel = ImageLabelDefault(text: "Registre e gerencie as ocorrências do seu IF!")
        
        // cria funçao com as propriedades da caixa de texto email
        //let emailTextField = TextFieldDefault(text: "Login")
        let emailTextField: TextFieldDefault = {
            let textField = TextFieldDefault (text: "E-mail")
            textField.keyboardType = .emailAddress
            textField.returnKeyType = .next
            
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
            
            textField.keyboardType = .emailAddress
            textField.returnKeyType = .done
            textField.isSecureTextEntry = true
            
            
            return textField
        }()
        
        // cria funçao com as propriedades do botao logar
        let logarButton = ButtonDefault(text: "Login")
        
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
        self.addSubview(loginImage)
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(logarButton)
        self.addSubview(registrarButton)
        
        registrarButton.addTarget(self, action: #selector(registerTap), for: .touchUpInside)
        
        logarButton.addTarget(self, action: #selector(logarTap), for: .touchUpInside)
        
        // configura as restriçoes de layout para todos os elementos visuais
        NSLayoutConstraint.activate([
        //restriçoes para o layout da imagem login
            loginImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            loginImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loginImage.widthAnchor.constraint(equalToConstant: 274.99),
            loginImage.heightAnchor.constraint(equalToConstant: 82.64),
        //restriçoes para o layout da label
            imageLabel.topAnchor.constraint(equalTo: loginImage.bottomAnchor, constant: 5),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
        
        //restriçoes para o layout caixa texto email
            emailTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 70),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
       
        //restriçoes para o layout caixa texto senha
            senhaTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 25),
            senhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            senhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            senhaTextField.heightAnchor.constraint(equalToConstant: 60),
        
        //restriçoes para o layout botao logar
            logarButton.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 70),
            logarButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 70),
            logarButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -70),
            logarButton.heightAnchor.constraint(equalToConstant: 50),
        //restriçoes para o layout botao registrar
            registrarButton.topAnchor.constraint(equalTo: logarButton.bottomAnchor, constant: 25),
            registrarButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 70),
            registrarButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -70),
            registrarButton.heightAnchor.constraint(equalToConstant: 50),
            
        ])
    }
    
    // MARK: - Actions BOTAO REGISTRAR
    @objc private func registerTap() {
        onRegisterTap?()
    }
    
    // MARK: - Actions BOTAO LOGAR
        @objc private func logarTap() {
            onLogarTap?()
        }
}

