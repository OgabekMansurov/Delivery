

import Foundation

import UIKit

struct collectionViewModel {
    var mainImage: UIImage
    var sushiName: String
    var smallDescription: String
    var cost: Int
    var cost1: Int
    var prz: Int
    
    static func fetchSushi() -> [collectionViewModel] {
        let firstItem = collectionViewModel(mainImage: UIImage(named: "sushi1")!,
                               sushiName: "Coca Cola ",
                               smallDescription: "0.33 L",
                                            cost: 10000,
                                            cost1: 11000,
                                            prz: 20   )
        let secondItem = collectionViewModel(mainImage: UIImage(named: "sushi2")!,
                                    sushiName: "Ariel",
                                    smallDescription: "Poroshok 3 Kg",
                                    cost: 10,
                                    cost1: 8,
                                             prz: 20   )
        let thirdItem = collectionViewModel(mainImage: UIImage(named: "sushi3")!,
                                   sushiName: "Sprite",
                                   smallDescription: "0.33 L",
                                   cost: 7,
                                   cost1: 8,
                                            prz: 20   )
        
        let fouthItem = collectionViewModel(mainImage: UIImage(named: "sushi4")!,
                                   sushiName: "Salmon",
                                   smallDescription: "Original Japanese",
                                   cost: 12,
                                   cost1: 8,
                                            prz: 20   )
        
        let five = collectionViewModel(mainImage: UIImage(named: "sushi1")!,
                                   sushiName: "Jengibre",
                                   smallDescription: "Original Japanese",
                                   cost: 8,
                              cost1: 8,
                                       prz: 20   )
        let six = collectionViewModel(mainImage: UIImage(named: "sushi2")!,
                                    sushiName: "Caviar",
                                    smallDescription: "Original Japanese",
                                    cost: 10,
                             cost1: 8,
                                      prz: 20   )
        let seven = collectionViewModel(mainImage: UIImage(named: "sushi3")!,
                                   sushiName: "Camaron",
                                   smallDescription: "Original Japanese",
                                   cost: 7,
                               cost1: 8,
                                        prz: 20   )
        
        let eight = collectionViewModel(mainImage: UIImage(named: "sushi4")!,
                                   sushiName: "Salmon",
                                   smallDescription: "Original Japanese",
                                   cost: 12,
                               cost1: 8,
                                        prz: 20   )
        
        
        return [firstItem, secondItem, thirdItem, fouthItem, five, six, seven, eight]
    }
}

struct Constants {
    static let leftDistanceToView: CGFloat = 40
    static let rightDistanceToView: CGFloat = 40
    static let galleryMinimumLineSpacing: CGFloat = 10
    static let galleryItemWidth = (UIScreen.main.bounds.width - Constants.leftDistanceToView - Constants.rightDistanceToView - (Constants.galleryMinimumLineSpacing / 2)) / 2
}
