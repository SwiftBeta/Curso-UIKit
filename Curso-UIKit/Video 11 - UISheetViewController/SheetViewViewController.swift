//
//  SheetViewViewController.swift
//  Curso-UIKit
//
//  Created by Home on 19/2/23.
//

import Foundation
import UIKit

class SheetViewViewController: UIViewController {
    private lazy var swiftBetaButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "¡Suscríbete a SwiftBeta! 🥳"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.presentSheetViewController()
        }))
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        
        title = "UISheetPresentationController"
        
        view.addSubview(swiftBetaButton)
        
        NSLayoutConstraint.activate([
            swiftBetaButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }

    func presentSheetViewController() {
        let viewControllerToPresent = SheetViewController()
        present(viewControllerToPresent,
                animated: true)
    }

}
