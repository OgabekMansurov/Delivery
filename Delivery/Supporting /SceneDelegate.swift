//
//  SceneDelegate.swift
//  Delivery
//
//  Created by Ogabek Mansurov on 7/4/23.
//

import UIKit
import IQKeyboardManagerSwift

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let scene = (scene as? UIWindowScene) else { return }
        IQKeyboardManager.shared.enable = true
        let nav = UINavigationController(rootViewController: NextOneController())
        let window = UIWindow(windowScene: scene)
        window.rootViewController = nav
        window.makeKeyAndVisible()
        self.window = window
    }

}

