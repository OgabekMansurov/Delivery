//
//  ForgotPassword.swift
//  Delivery
//
//  Created by Ogabek Mansurov on 7/20/23.
//

import UIKit

class ForgotPassword: UIViewController {
    
    private let headerView = AuthHeaderView(title: "Telefon Raqam", subTitle: "Hisobingizni Tasdiqlang")
    
    private let numberField = CustomTextField(fieldType: .number)
    
    private let nextButton = CustomButton(title: "Next", hasBackground: "ff8000", FontSize: 22, tintColor: "fff")
    private let maxNumberCount = 9
    private let regex = try! NSRegularExpression(pattern: "[\\+998\\s-\\(\\)]", options: .caseInsensitive)
      
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.nextButton.addTarget(self, action: #selector(nextButtonTap), for: .touchUpInside)
        numberField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    private func setupUI() {
        self.view.backgroundColor = .systemBackground
        
        self.view.addSubview(headerView)
        self.view.addSubview(numberField)
        self.view.addSubview(nextButton)
        
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        numberField.translatesAutoresizingMaskIntoConstraints = false
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            self.headerView.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor),
            self.headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.headerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.headerView.heightAnchor.constraint(equalToConstant: 222),
            
            self.numberField.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 12),
            self.numberField.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.numberField.heightAnchor.constraint(equalToConstant: 55),
            self.numberField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.nextButton.topAnchor.constraint(equalTo: numberField.bottomAnchor, constant: 22),
            self.nextButton.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.nextButton.heightAnchor.constraint(equalToConstant: 55),
            self.nextButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            ])
    }
    @objc private func didTapForgotPassword() {
        let vc = NextLogin()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func nextButtonTap() {
        let vc = UpdateImage()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    private func format(phoneNumber: String, shouldRemoveLastDigit: Bool) -> String {
           guard !(shouldRemoveLastDigit && phoneNumber.count <= 2) else { return "+" }
           
           let range = NSString(string: phoneNumber).range(of: phoneNumber)
           var number = regex.stringByReplacingMatches(in: phoneNumber, options: [], range: range, withTemplate: "")
           
           if number.count > maxNumberCount {
               let maxIndex = number.index(number.startIndex, offsetBy: maxNumberCount)
               number = String(number[number.startIndex..<maxIndex])
           }
           
           if shouldRemoveLastDigit {
               let maxIndex = number.index(number.startIndex, offsetBy: number.count - 1)
               number = String(number[number.startIndex..<maxIndex])
           }
           
           let maxIndex = number.index(number.startIndex, offsetBy: number.count)
           let regRange = number.startIndex..<maxIndex
           
           if number.count < 7 {
               let pattern = "(\\d)(\\d{1})(\\d+)"
               number = number.replacingOccurrences(of: pattern, with: " ($1$2) $3", options: .regularExpression, range: regRange)
           } else {
               let pattern = "(\\d)(\\d{1})(\\d{3})(\\d{2})(\\d+)"
               number = number.replacingOccurrences(of: pattern, with: " ($1$2) $3-$4-$5", options: .regularExpression, range: regRange)
           }
           
        return "+998" + number
       }
   }

   extension ForgotPassword: UITextFieldDelegate {
       func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
           let fullString = (textField.text ?? "") + string
           textField.text = format(phoneNumber: fullString, shouldRemoveLastDigit: range.length == 1)
           return false
       }
   }

