//
//  BacgroundView.swift
//  Delivery
//
//  Created by Ogabek Mansurov on 7/22/23.
//

import UIKit

class BacgroundView: UIView {

    enum ViewType {
        case Square
        case Circle
    }
    
    private let viewBackType: ViewType
    
    init(background: UIColor, Type: ViewType) {
        self.viewBackType = Type
        super.init(frame: .zero)
        
        
        self.layer.shadowColor = UIColor.white.cgColor
        self.layer.shadowOpacity = 5
        self.layer.shadowOffset = .zero
        self.layer.shadowRadius = 1
        self.backgroundColor = background
        
        
        switch viewBackType {
        
        case .Square:
//            self.layer.cornerRadius = 9
            self.layer.cornerCurve = .circular
            self.layer.borderColor = Colors.offLight.cgColor
            self.layer.borderWidth = 1
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.cornerRadius = 10
            self.layer.shadowRadius = 9
            self.layer.shadowOpacity = 0.2
            self.layer.shadowOffset = CGSize(width: 5, height: 8)
            self.clipsToBounds = false
            
            
        case .Circle:
            self.layer.cornerRadius = 30
            self.layer.borderColor = UIColor.white.cgColor
            self.layer.borderWidth = 2
            self.layer.cornerCurve = .circular
            self.layer.shadowColor = Colors.light.cgColor
            self.layer.shadowOpacity = 5
            self.layer.shadowOffset = .zero
            self.layer.shadowRadius = 1
            
            self.backgroundColor = .white
            self.layer.borderWidth = 1.1
            self.layer.borderColor = Colors.offLight.cgColor
            self.layer.cornerRadius = 10
            self.layer.shadowRadius = 9
            layer.shadowOpacity = 0.2
            layer.shadowOffset = CGSize(width: 3, height: 6)
            self.clipsToBounds = false
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
