//
//  UIButton .swift
//  Delivery
//
//  Created by Ogabek Mansurov on 7/10/23.
//

import UIKit

class CustomButton: UIButton {

    
    init(title: String, hasBackground: String, FontSize: CGFloat, tintColor: String ) {
        super.init(frame: .zero)
        
        self.setTitle(title, for: .normal)
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = true
        self.layer.borderWidth = 1.6
        self.layer.borderColor = UIColor.clear.cgColor
        
        self.backgroundColor = UIColor(hexString: hasBackground)
        self.titleLabel?.font = .systemFont(ofSize: FontSize, weight: .medium)
        
        
        let tintColor: UIColor = UIColor(hexString: tintColor)
        self.setTitleColor(tintColor, for: .normal)
        
//        let borderColor: UIColor = borderColor ? .clear : UIColor(hexString: "#b5651d")
//        self.layer.borderColor = borderColor.cgColor
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}




