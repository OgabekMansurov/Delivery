//
//  CartTableViewCell.swift
//  Delivery
//
//  Created by Ogabek Mansurov on 7/23/23.
//

import UIKit

class CartTableViewCell: UITableViewCell {
    
    static let identifier = String(describing: CartTableViewCell.self)
    
    let image: UIImageView = {
         let imageView = UIImageView()
         imageView.contentMode = .scaleAspectFill
         imageView.translatesAutoresizingMaskIntoConstraints = false
         return imageView
     }()
    
    let title: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let desc: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = Colors.offLight
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let sena: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = .black
        label.font = .systemFont(ofSize: 17, weight: .semibold)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    

    let Background: UIView = {
        let view = UIView()
        view.layer.borderColor = Colors.offLight.cgColor
        view.layer.borderWidth = 1
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.cornerRadius = 10
        view.layer.shadowRadius = 9
        view.layer.shadowOpacity = 0.2
        view.layer.shadowOffset = CGSize(width: 5, height: 8)
        view.clipsToBounds = false
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let trashButton = CustomButtonImage(image: UIImage(systemName: "trash")!)
    let minusButton = CustomButtonImage(image: UIImage(systemName: "minus.circle")!)
    let pilusButton = CustomButtonImage(image: UIImage(systemName: "plus.circle.fill")!)
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(Background)
        Background.addSubview(image)
        Background.addSubview(title)
        Background.addSubview(desc)
        Background.addSubview(sena)
        Background.addSubview(trashButton)
        Background.addSubview(pilusButton)
        Background.addSubview(minusButton)
        
        trashButton.translatesAutoresizingMaskIntoConstraints = false
        pilusButton.translatesAutoresizingMaskIntoConstraints = false
        minusButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            Background.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 10),
            Background.leftAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leftAnchor, constant: 10),
            Background.rightAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.rightAnchor, constant: -10),
            Background.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            
            image.topAnchor.constraint(equalTo: Background.topAnchor, constant: 10),
            image.leftAnchor.constraint(equalTo: Background.leftAnchor, constant: 10),
            image.heightAnchor.constraint(equalToConstant: contentView.frame.size.width / 2),
            image.widthAnchor.constraint(equalToConstant: contentView.frame.size.width / 2),
            image.bottomAnchor.constraint(equalTo: Background.bottomAnchor, constant: -10),
            
            title.centerYAnchor.constraint(equalTo: Background.centerYAnchor, constant: -40),
            title.leftAnchor.constraint(equalTo: image.rightAnchor, constant: 10),
            title.rightAnchor.constraint(equalTo: Background.rightAnchor, constant: -10),
            
            desc.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 5),
            desc.leftAnchor.constraint(equalTo: image.rightAnchor, constant: 10),
            desc.rightAnchor.constraint(equalTo: Background.rightAnchor, constant: -10),
            
            sena.topAnchor.constraint(equalTo: desc.bottomAnchor, constant: 5),
            sena.leftAnchor.constraint(equalTo: image.rightAnchor, constant: 10),
            sena.rightAnchor.constraint(equalTo: Background.rightAnchor, constant: -10),
            
            trashButton.bottomAnchor.constraint(equalTo: Background.bottomAnchor, constant: -15),
            trashButton.rightAnchor.constraint(equalTo: Background.rightAnchor, constant: -15),
            trashButton.widthAnchor.constraint(equalToConstant: 40),
            trashButton.heightAnchor.constraint(equalToConstant: 40),
            
            minusButton.leftAnchor.constraint(equalTo: image.rightAnchor, constant: -10),
            minusButton.bottomAnchor.constraint(equalTo: Background.bottomAnchor, constant: -15),
            minusButton.widthAnchor.constraint(equalToConstant: 60),
            minusButton.heightAnchor.constraint(equalToConstant: 60),
            
            pilusButton.leftAnchor.constraint(equalTo: minusButton.rightAnchor, constant: -10),
            pilusButton.bottomAnchor.constraint(equalTo: Background.bottomAnchor, constant: -15),
            self.pilusButton.widthAnchor.constraint(equalToConstant: 60),
            self.pilusButton.heightAnchor.constraint(equalToConstant: 60),
            
            
            
            
        ])
        
        
    }
    
    func reload(item: TableViewModels) {
        image.image = UIImage(named: item.image)
        title.text = item.title
        desc.text = item.desc
        sena.text = item.sena
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
