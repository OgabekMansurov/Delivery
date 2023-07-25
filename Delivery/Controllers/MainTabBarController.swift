//
//  ViewController.swift
//  Delivery
//
//  Created by Ogabek Mansurov on 7/4/23.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let Home = UINavigationController(rootViewController: HomeController())
        let Card = UINavigationController(rootViewController: CardController())
        let Favorite = UINavigationController(rootViewController: FavoriteController())
        let Calendar = UINavigationController(rootViewController: CalendarController())
        
        Home.title = "Home"
        Card.title = "Card"
        Favorite.title = "Favorite"
        Calendar.title = "Calendar"
        
        Home.tabBarItem.image = UIImage(named: "home")
        Card.tabBarItem.image = UIImage(systemName: "cart.fill")
        Favorite.tabBarItem.image = UIImage(systemName: "heart.fill")
        Calendar.tabBarItem.image = UIImage(systemName: "calendar")
    
        tabBar.tintColor = Colors.light
        tabBar.unselectedItemTintColor = Colors.offLight
        
        setViewControllers([Home, Card, Favorite, Calendar], animated: false)
    }
}

