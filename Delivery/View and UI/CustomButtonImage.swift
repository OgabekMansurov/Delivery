//
//  CustomButtonImage.swift
//  Delivery
//
//  Created by Ogabek Mansurov on 7/22/23.
//

import UIKit

class CustomButtonImage: UIButton {


    init(image: UIImage , tintColor: Bool = true) {
        super.init(frame: .zero)
        self.contentMode = .scaleToFill
        
        if tintColor == true {
            self.setImage(image, for: .normal)
        } else {
            self.setImage(image.withRenderingMode(.alwaysTemplate), for: .normal)
            self.tintColor = Colors.offLight
        }
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


