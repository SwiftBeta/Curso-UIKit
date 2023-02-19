//
//  RemoveStoryboardViewController.swift
//  Curso-UIKit
//
//  Created by Home on 19/2/23.
//

import Foundation
import UIKit

/*func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let windowScene = (scene as? UIWindowScene) else { return }
    
    let viewController = ViewController()
    viewController.title = "Suscríbete a SwiftBeta!"
    let navigationController = UINavigationController(rootViewController: viewController)
    self.window = UIWindow(windowScene: windowScene)
    self.window?.rootViewController = navigationController
    self.window?.makeKeyAndVisible()
}*/

class RemoveStoryboardViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        
        title = "Borrar Storyboard"
    }
}
