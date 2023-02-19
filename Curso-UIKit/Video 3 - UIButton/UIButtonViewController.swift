//
//  UIButtonViewController.swift
//  Curso-UIKit
//
//  Created by Home on 19/2/23.
//

import Foundation
import UIKit

class UIButtonViewController: UIViewController {
    private let swiftBetaButton1: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Suscríbete a SwiftBeta"
        configuration.subtitle = "Apoya el canal"
        configuration.image = UIImage(systemName: "play.circle.fill")
        
        let button = UIButton(type: .system)
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let swiftBetaButton2: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Suscríbete a SwiftBeta"
        configuration.titleAlignment = .center
        configuration.subtitle = "Apoya el canal"
        configuration.image = UIImage(systemName: "play.circle.fill")
        configuration.imagePadding = 12
        configuration.imagePlacement = .trailing
        
        let button = UIButton(type: .system)
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let swiftBetaButton3: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Suscríbete a SwiftBeta"
        configuration.titleAlignment = .center
        configuration.subtitle = "Apoya el canal"
        configuration.image = UIImage(systemName: "play.circle.fill")
        configuration.imagePadding = 12
        configuration.imagePlacement = .top
        configuration.buttonSize = .large
        configuration.baseBackgroundColor = .systemPurple
        configuration.baseForegroundColor = .white
        
        let button = UIButton(type: .system)
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var swiftBetaButton4: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Suscríbete a SwiftBeta"
        configuration.titleAlignment = .center
        configuration.subtitle = "Apoya el canal"
        configuration.image = UIImage(systemName: "play.circle.fill")
        configuration.imagePadding = 12
        configuration.imagePlacement = .top
        configuration.buttonSize = .large
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.showMessage()
        }))
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        title = "UIButton"
        
        view.addSubview(swiftBetaButton1)
        view.addSubview(swiftBetaButton2)
        view.addSubview(swiftBetaButton3)
        view.addSubview(swiftBetaButton4)
        
        NSLayoutConstraint.activate([
            swiftBetaButton1.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 32),
            swiftBetaButton1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            swiftBetaButton2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaButton2.topAnchor.constraint(equalTo: swiftBetaButton1.bottomAnchor, constant: 20),
            
            swiftBetaButton3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaButton3.topAnchor.constraint(equalTo: swiftBetaButton2.bottomAnchor, constant: 20),
            
            swiftBetaButton4.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaButton4.topAnchor.constraint(equalTo: swiftBetaButton3.bottomAnchor, constant: 20),
        ])
    }

    func showMessage() {
        print("Button tapped!")
    }
}
