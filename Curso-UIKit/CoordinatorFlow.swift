//
//  Coordinator_Flow.swift
//  Curso-UIKit
//
//  Created by Home on 19/2/23.
//

import Foundation
import UIKit

enum VideoType: Int {
    case introduction = 0
    case autoLayout
    case uiButton
    case uiLabel
    case uiImageView
    case uiTableView
    case uiStackView
    case uiCollectionView
    case modalNavigation
    case pushNavigation
    case sheetPresentationController
    case uiCollectionViewCompositionalLayout
    case delegationPattern
    case storyboard
    case xibs
    case lifecycleViewController
    case animations
    case uiKitWithSwiftUI
    case removeStoryboard
    case childViewController
}

class CoordinatorFlow {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func navigate(to: VideoType) {
        switch to {
        case .introduction:
            let storyboard = UIStoryboard(name: "Introduccion_UIKit", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "Introduccion_UIKit")
            navigationController.pushViewController(viewController, animated: true)
        case .autoLayout:
            let storyboard = UIStoryboard(name: "AutoLayout_Main", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "AutoLayoutViewController")
            navigationController.pushViewController(viewController, animated: true)
        case .uiButton:
            let viewController = UIButtonViewController()
            navigationController.pushViewController(viewController, animated: true)
        case .uiLabel:
            let viewController = UILabelViewController()
            navigationController.pushViewController(viewController, animated: true)
        case .uiImageView:
            let viewController = UIImageViewViewController()
            navigationController.pushViewController(viewController, animated: true)
        case .uiTableView:
            let viewController = UITableViewViewController()
            navigationController.pushViewController(viewController, animated: true)
        case .uiStackView:
            let viewController = UIStackViewViewController()
            navigationController.pushViewController(viewController, animated: true)
        case .uiCollectionView:
            let viewController = UICollectionViewViewController()
            navigationController.pushViewController(viewController, animated: true)
        case .modalNavigation:
            let viewController = NavegacionModalViewControllerA()
            navigationController.pushViewController(viewController, animated: true)
        case .pushNavigation:
            let viewController = NavegacionPushViewControllerA()
            navigationController.pushViewController(viewController, animated: true)
        case .sheetPresentationController:
            let viewController = SheetViewViewController()
            navigationController.pushViewController(viewController, animated: true)
        case .uiCollectionViewCompositionalLayout:
            let viewController = UICollectionViewCompositionalLayoutViewController()
            navigationController.pushViewController(viewController, animated: true)
        case .delegationPattern:
            let viewController = DelegationPatternViewController()
            navigationController.pushViewController(viewController, animated: true)
        case .storyboard:
            let storyboard = UIStoryboard(name: "StoryboardMain", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "StoryboardViewController")
            navigationController.pushViewController(viewController, animated: true)
        case .xibs:
            let storyboard = UIStoryboard(name: "XibsMain", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "XibsViewController")
            navigationController.pushViewController(viewController, animated: true)
        case .lifecycleViewController:
            let viewController = LifeCycleViewController()
            navigationController.pushViewController(viewController, animated: true)
        case .animations:
            let storyboard = UIStoryboard(name: "AnimationsMain", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "AnimationsViewController")
            navigationController.pushViewController(viewController, animated: true)
        case .uiKitWithSwiftUI:
            let storyboard = UIStoryboard(name: "UIKitMain", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "CharacterListViewController")
            navigationController.pushViewController(viewController, animated: true)
        case .removeStoryboard:
            let viewController = RemoveStoryboardViewController()
            navigationController.pushViewController(viewController, animated: true)
        case .childViewController:
            let viewController = ChildViewController()
            navigationController.pushViewController(viewController, animated: true)
        }
    }
}
