//
//  NewCollectionViewCell.swift
//  Delivery
//
//  Created by Ogabek Mansurov on 7/22/23.
//

import UIKit

class NewCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "NewCollectionViewCell"
    
    
    let Background: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 9
        view.layer.cornerCurve = .circular
        view.layer.shadowColor = UIColor.white.cgColor
        view.layer.shadowOpacity = 5
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 1
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let ImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = 15
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = #colorLiteral(red: 0.007841579616, green: 0.007844132371, blue: 0.007841020823, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 11, weight: .semibold)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
                
        addSubview(ImageView)
        Background.addSubview(nameLabel)
        Background.addSubview(descriptionLabel)
        ImageView.addSubview(Background)
        
        backgroundColor = .white
        
        Background.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        Background.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        Background.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        Background.topAnchor.constraint(equalTo: nameLabel.topAnchor, constant: -10).isActive = true
        
        ImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        ImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        ImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        ImageView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: descriptionLabel.topAnchor, constant: -7).isActive = true
        
        descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        descriptionLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        descriptionLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2, constant: 10).isActive = true
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 15
        self.layer.shadowRadius = 9
        layer.shadowOpacity = 0.3
        layer.shadowOffset = CGSize(width: 5, height: 8)
        
        self.clipsToBounds = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
