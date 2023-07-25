//
//  GalleryCollectionView.swift
//
//

import UIKit

class BestSellingCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var cells = [collectionViewModel]()

     init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        
        backgroundColor = .clear 
        delegate = self
        dataSource = self
        register(oldCollectionViewCell.self, forCellWithReuseIdentifier: oldCollectionViewCell.reuseId)
        
        translatesAutoresizingMaskIntoConstraints = false
        layout.minimumLineSpacing = Constants.galleryMinimumLineSpacing
        contentInset = UIEdgeInsets(top: 0, left: Constants.leftDistanceToView/2, bottom: 0, right: Constants.rightDistanceToView)
        
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
    }
    
    func set(cells: [collectionViewModel]) {
        self.cells = cells
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: oldCollectionViewCell.reuseId, for: indexPath) as! oldCollectionViewCell
        cell.mainImageView.image = cells[indexPath.row].mainImage
        cell.nameLabel.text = cells[indexPath.row].sushiName
        cell.smallDescriptionLabel.text = cells[indexPath.row].smallDescription
        cell.costLabel.text = "$\(cells[indexPath.row].cost)"
        cell.costLabel1.text = "$\(cells[indexPath.row].cost)"
        cell.prasentLabel.text = "-\(cells[indexPath.row].cost1)%"
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.height * 0.75, height: frame.height * 0.9)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
