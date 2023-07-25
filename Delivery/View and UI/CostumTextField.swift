//
//  CostumTextField.swift
//  TATU App
//
//  Created by admin on 19/04/23.
//

import UIKit

class CustomTextField: UITextField {
    
    enum CustomTextFieldType {
        case username
        case email
        case password
        case number
        case empty
        case name
        case surname
        case search
    }
    
    private let authFieldType: CustomTextFieldType
    
    init(fieldType: CustomTextFieldType) {
        self.authFieldType = fieldType
        super.init(frame: .zero)
        self.backgroundColor = .secondarySystemBackground
        self.layer.cornerRadius = 10
        
        self.returnKeyType = .done
        self.autocorrectionType = .no
        self.autocapitalizationType = .none
        
        self.leftViewMode = .always
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: self.frame.size.height))
        
        switch fieldType {
        case .username:
            self.placeholder = "Username"
        case .email:
            self.placeholder = "Email Address"
            self.keyboardType = .emailAddress
            self.textContentType = .emailAddress
            
        case .password:
            self.placeholder = "Parol"
            self.textContentType = .oneTimeCode
            self.isSecureTextEntry = true
        case .number:
            self.placeholder = "Phone Number"
            self.textContentType = .telephoneNumber
            self.keyboardType = .phonePad
            self.isSecureTextEntry = false
        case .empty:
            self.placeholder = ""
            self.textContentType = .postalCode
            self.keyboardType = .numberPad
            self.isSecureTextEntry = true
            self.textAlignment = .left
        case .name:
            self.placeholder = "Name"
            self.textContentType = .familyName
            self.isSecureTextEntry = true
        case .surname:
            self.placeholder = "Surname"
            self.textContentType = .familyName
            self.isSecureTextEntry = true
        case .search:
            self.placeholder = "Search Top"
            self.textContentType = .name
            self.isSecureTextEntry = false
            self.backgroundColor = .white
            self.layer.borderWidth = 1.1
            self.layer.borderColor = Colors.offLight.cgColor
            self.layer.cornerRadius = 10
            self.layer.shadowRadius = 9
            layer.shadowOpacity = 0.2
            layer.shadowOffset = CGSize(width: 3, height: 6)
            self.clipsToBounds = false
            
            let imageIconLeft = UIImageView(image: UIImage(systemName: "magnifyingglass"))
            imageIconLeft.frame = CGRect(x: 10, y: 3, width: imageIconLeft.image!.size.width + 5, height: imageIconLeft.image!.size.height + 5)
            let paddingView: UIView = UIView.init(frame: CGRect(x: 0, y: 0, width: 50, height: 30))
            paddingView.addSubview(imageIconLeft)
            self.leftViewMode = .always
            self.leftView = paddingView
            imageIconLeft.image = imageIconLeft.image?.withRenderingMode(.alwaysTemplate)
            imageIconLeft.tintColor = Colors.offLight
            
            let imageIconRight = UIImageView(image: UIImage(systemName: "camera.filters"))
            imageIconRight.frame = CGRect(x: 0, y: 0, width: imageIconRight.image!.size.width + 5, height: imageIconRight.image!.size.height + 5)
            let paddingViewRight: UIView = UIView.init(frame: CGRect(x: 0, y: 0, width: 50, height: 30))
            paddingViewRight.addSubview(imageIconRight)
            self.rightViewMode = .always
            self.rightView = paddingViewRight
            imageIconRight.image = imageIconRight.image?.withRenderingMode(.alwaysTemplate)
            imageIconRight.tintColor = Colors.offLight
            
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
