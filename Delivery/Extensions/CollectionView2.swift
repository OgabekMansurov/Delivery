//
//  File.swift
//  Delivery
//
//  Created by Ogabek Mansurov on 7/22/23.
//

import Foundation
import UIKit

struct collectionView2Model {
    var mainImage: UIImage
    var sushiName: String
    var smallDescription: String
    
    static func fetchSushi() -> [collectionView2Model] {
        
        let firstItem = collectionView2Model(mainImage: UIImage(named: "photo1")!, sushiName: "Absdefr", smallDescription: "Aclxncn")
        let secondItem = collectionView2Model(mainImage: UIImage(named: "photo1")!, sushiName: "Absdefr", smallDescription: "Aclxncn")
        let thirdItem = collectionView2Model(mainImage: UIImage(named: "photo1")!, sushiName: "Absdefr", smallDescription: "Aclxncn")
        let fouthItem = collectionView2Model(mainImage: UIImage(named: "photo1")!, sushiName: "Absdefr", smallDescription: "Aclxncn")
        let five = collectionView2Model(mainImage: UIImage(named: "photo1")!, sushiName: "Absdefr", smallDescription: "Aclxncn")
        let six = collectionView2Model(mainImage: UIImage(named: "photo1")!, sushiName: "Absdefr", smallDescription: "Aclxncn")
        let seven = collectionView2Model(mainImage: UIImage(named: "photo1")!, sushiName: "Absdefr", smallDescription: "Aclxncn")
        let eight = collectionView2Model(mainImage: UIImage(named: "photo1")!, sushiName: "Absdefr", smallDescription: "Aclxncn")
        
        return [firstItem, secondItem, thirdItem, fouthItem, five, six, seven, eight]
    }
}

struct Constants2 {
    static let leftDistanceView: CGFloat = 40
    static let rightDistanceView: CGFloat = 40
    static let galleryMinimumSpacing: CGFloat = 10
    static let gallerItemWidth = (UIScreen.main.bounds.width - Constants2.leftDistanceView - Constants2.rightDistanceView - (Constants2.galleryMinimumSpacing / 2)) / 2
}
