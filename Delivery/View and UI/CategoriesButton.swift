//
//  CategoriesButton.swift
//  Delivery
//
//  Created by Ogabek Mansurov on 7/23/23.
//

import UIKit

class CategoriesButton: UIView {
    
    let Background: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 9
        view.layer.cornerCurve = .circular
        view.layer.shadowColor = UIColor.white.cgColor
        view.layer.shadowOpacity = 5
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 1
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private let ImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "account")
        return iv
    }()
    
    private let Label: UILabel = {
        let label = UILabel()
        label.textColor = Colors.light
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.text = "Error"
        return label
    }()
    
    
    init(title: String) {
        super.init(frame: .zero)
        self.Label.text = title
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupUI() {
        self.addSubview(ImageView)
        self.addSubview(Label)
        self.addSubview(Background)
        
        ImageView.translatesAutoresizingMaskIntoConstraints = false
        Label.translatesAutoresizingMaskIntoConstraints = false
        Background.translatesAutoresizingMaskIntoConstraints = false


        NSLayoutConstraint.activate([
            self.Background.topAnchor.constraint(equalTo: self.topAnchor),
            self.Background.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.Background.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.Background.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            self.ImageView.topAnchor.constraint(equalTo: Background.topAnchor, constant: 3),
            self.ImageView.leftAnchor.constraint(equalTo: Background.leftAnchor, constant: 3),
            self.ImageView.rightAnchor.constraint(equalTo: Background.rightAnchor, constant: -3),
            
            self.Label.topAnchor.constraint(equalTo: ImageView.bottomAnchor, constant: 3),
            self.Label.leftAnchor.constraint(equalTo: Background.leftAnchor, constant: 3),
            self.Label.rightAnchor.constraint(equalTo: Background.rightAnchor, constant: -3),
            self.Label.bottomAnchor.constraint(equalTo: ImageView.bottomAnchor, constant: -3),
            
            
        ])
    }
}

