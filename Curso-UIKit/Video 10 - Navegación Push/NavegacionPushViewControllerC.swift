//
//  ViewControllerC.swift
//  UIKit10_NavigationPush
//
//  Created by Home on 17/5/22.
//

import UIKit

class NavegacionPushViewControllerC: UIViewController {

    private lazy var swiftbetaButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "¡Suscríbete a SwiftBeta!"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.startNavigation()
        }))
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        title = "View Controller C"
        view.addSubview(swiftbetaButton)
        
        NSLayoutConstraint.activate([
            swiftbetaButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftbetaButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    func startNavigation() {
        //self.navigationController?.popViewController(animated: true)
        self.present(NavegacionPushViewControllerD(),
                     animated: true)
    }
}
