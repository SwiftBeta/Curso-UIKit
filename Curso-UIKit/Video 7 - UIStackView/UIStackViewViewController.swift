//
//  UIStackViewViewController.swift
//  Curso-UIKit
//
//  Created by Home on 19/2/23.
//

import Foundation
import UIKit

class UIStackViewViewController: UIViewController {
    private let swiftBetaLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "🤑 In App Purchases 🤑"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 32)
        return label
    }()
    
    private let swiftbetaStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        title = "UIStackView"
        
        view.addSubview(swiftBetaLabel)
        view.addSubview(swiftbetaStackView)
        
        NSLayoutConstraint.activate([
            swiftBetaLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
            swiftBetaLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            swiftBetaLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            swiftbetaStackView.topAnchor.constraint(equalTo: swiftBetaLabel.bottomAnchor, constant: 32),
            swiftbetaStackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            swiftbetaStackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
        ])
        
        ["1.99€", "2.99€", "14.99€", "24.99€"].forEach { price in
            let button = UIButton(type: .system)
            var configuration = UIButton.Configuration.borderedTinted()
            configuration.title = price
            configuration.subtitle = "Suscripción"
            configuration.image = UIImage(systemName: "eurosign.circle.fill")
            configuration.imagePadding = 12
            configuration.baseBackgroundColor = .systemBlue
            button.configuration = configuration
            
            swiftbetaStackView.addArrangedSubview(button)
        }
    }
}
