//
//  NextRegister.swift
//  Delivery
//
//  Created by Ogabek Mansurov on 7/18/23.
//

import UIKit

class NextRegister: UIViewController {
    
    private let headerView = AuthHeaderView(title: "Shaxsiy Hisob Yaratish", subTitle: "Shaxsiy Kabinet")
    
    private let nameField = CustomTextField(fieldType: .name)
    private let surnameField = CustomTextField(fieldType: .surname)
    private let signInButton = CustomButton(title: "Yaratish", hasBackground: "ff8000", FontSize: 22, tintColor: "fff")
    private let forgotPasswordButton = CustomButton(title: "Sizda Shahsiy hisob mavjudmi ?", hasBackground: "fff", FontSize: 17, tintColor: "ff8000")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.signInButton.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
        self.forgotPasswordButton.addTarget(self, action: #selector(didTapForgotPassword), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    private func setupUI() {
        self.view.backgroundColor = .systemBackground
        
        self.view.addSubview(headerView)
        self.view.addSubview(nameField)
        self.view.addSubview(surnameField)
        self.view.addSubview(signInButton)
        self.view.addSubview(forgotPasswordButton)
        
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        nameField.translatesAutoresizingMaskIntoConstraints = false
        surnameField.translatesAutoresizingMaskIntoConstraints = false
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        NSLayoutConstraint.activate([
            self.headerView.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor),
            self.headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.headerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.headerView.heightAnchor.constraint(equalToConstant: 222),
            
            self.nameField.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 12),
            self.nameField.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.nameField.heightAnchor.constraint(equalToConstant: 55),
            self.nameField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.surnameField.topAnchor.constraint(equalTo: nameField.bottomAnchor, constant: 22),
            self.surnameField.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.surnameField.heightAnchor.constraint(equalToConstant: 55),
            self.surnameField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.signInButton.topAnchor.constraint(equalTo: surnameField.bottomAnchor, constant: 22),
            self.signInButton.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.signInButton.heightAnchor.constraint(equalToConstant: 55),
            self.signInButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            
            self.forgotPasswordButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 6),
            self.forgotPasswordButton.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.forgotPasswordButton.heightAnchor.constraint(equalToConstant: 44),
            self.forgotPasswordButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
        ])
    }
    @objc private func didTapForgotPassword() {
        let vc = NextLogin()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func didTapSignIn() {
        let vc = NextNumberRegister()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
