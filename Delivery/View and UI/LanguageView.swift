//
//  PhoneNumberView.swift
//  TestPicker
//
//  Created by Anastasia Sokolan on 21.12.2020.
//

import UIKit

final class LanguageView: UIView
{
    static func create(icon: UIImage, title: String) -> LanguageView
    {
        let numberView = LanguageView()
        numberView.iconView.image = icon
        numberView.label.text = title
        
        return numberView
    }
    
    private let iconView = UIImageView()
    private let label = UILabel()
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup()
    {
        addSubview(iconView)
        addSubview(label)
        
        iconView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        let iconWidth: CGFloat = 20.0
        
        NSLayoutConstraint.activate([
            iconView.widthAnchor.constraint(equalToConstant: iconWidth),
            iconView.heightAnchor.constraint(equalToConstant: iconWidth),
            iconView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0.0),
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: trailingAnchor),
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.leadingAnchor.constraint(equalTo: iconView.trailingAnchor, constant: 10.0)
        ])

        label.textColor = Colors.light
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .left
        
        iconView.contentMode = .scaleAspectFit
    }
}
