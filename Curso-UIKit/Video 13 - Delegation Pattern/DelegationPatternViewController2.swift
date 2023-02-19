//
//  ViewController.swift
//  UIKit13_DelegationPattern
//
//  Created by Home on 28/5/22.
//

import UIKit

class DelegationPatternViewController2: UIViewController, APIClientDelegate {
    deinit {
        print("Deinit ViewController 2")
    }
    
    let apiClient = APIClient()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.textAlignment = .center
        label.text = "placeholder"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var acceptButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "¡Suscríbete a SwiftBeta!"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { [weak self] _ in
            self?.didTapOnAcceptButton()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        apiClient.delegate = self
        
        view.backgroundColor = .orange
        
        view.addSubview(acceptButton)
        view.addSubview(nameLabel)
        
        NSLayoutConstraint.activate([
            nameLabel.bottomAnchor.constraint(equalTo: acceptButton.topAnchor, constant: -32),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            acceptButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            acceptButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }

    func didTapOnAcceptButton() {
        apiClient.getTracks()
    }
    
    func update(pokemons: [PokemonDataModel]) {
        DispatchQueue.main.async {
            self.nameLabel.text = pokemons.randomElement()?.name
        }
    }
}

