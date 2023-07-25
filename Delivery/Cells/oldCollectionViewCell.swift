//
//  GalleryCollectionViewCell.swift


import UIKit

class oldCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "oldCollectionViewCell"
    
    let detailsButton = CustomButton(title: "Tafsilotlar", hasBackground: "ff8000", FontSize: 12, tintColor: "fff")
    
    let mainImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = #colorLiteral(red: 0.007841579616, green: 0.007844132371, blue: 0.007841020823, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let smallDescriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 11, weight: .semibold)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let likeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "like")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let costLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let costLabel1: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let prasentLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .red
        label.textColor = .white
        label.textAlignment = .center
        label.layer.cornerRadius = 20
        label.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.masksToBounds = true
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        detailsButton.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(mainImageView)
        addSubview(nameLabel)
        addSubview(smallDescriptionLabel)
        addSubview(likeImageView)
        addSubview(costLabel)
        addSubview(costLabel1)
        addSubview(detailsButton)
        addSubview(prasentLabel)
        
        backgroundColor = .white
        
        // mainImageView constraints
        mainImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        mainImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: topAnchor, constant: 40).isActive = true
        mainImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/2).isActive = true
        
        // nameLabel constraints
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: smallDescriptionLabel.topAnchor, constant: -7).isActive = true
        
        // smallDescriptionLabel constraints
        smallDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        smallDescriptionLabel.bottomAnchor.constraint(equalTo: detailsButton.topAnchor, constant: -10).isActive = true
        smallDescriptionLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2, constant: 10).isActive = true
        
        // likeImageView constraints
        likeImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        likeImageView.topAnchor.constraint(equalTo: mainImageView.topAnchor, constant: -20).isActive = true
        likeImageView.widthAnchor.constraint(equalToConstant: 24).isActive = true
        likeImageView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        // costLabel constraints
        costLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        costLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20).isActive = true
        
        costLabel1.rightAnchor.constraint(equalTo: costLabel.leftAnchor, constant: -5).isActive = true
        costLabel1.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20).isActive = true
        
        prasentLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
        prasentLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        prasentLabel.widthAnchor.constraint(equalToConstant: 40).isActive = true
        prasentLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        detailsButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        detailsButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20).isActive = true
        detailsButton.widthAnchor.constraint(equalToConstant: 72).isActive = true
        detailsButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
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
