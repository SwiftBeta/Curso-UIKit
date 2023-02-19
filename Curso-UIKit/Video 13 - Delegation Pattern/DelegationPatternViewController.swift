//
//  ViewController.swift
//  UIKit13_DelegationPattern
//
//  Created by Home on 28/5/22.
//

import UIKit

class DelegationPatternViewController: UIViewController, APIClientDelegate {
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
    
    
    private lazy var presentViewController2Button: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Present ViewController 2"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { [weak self] _ in
            self?.didTapOnPresentViewController2Button()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        apiClient.delegate = self
        
        view.backgroundColor = .white
        
        title = "Delegation Pattern"
        
        view.addSubview(acceptButton)
        view.addSubview(nameLabel)
        view.addSubview(presentViewController2Button)
        
        NSLayoutConstraint.activate([
            nameLabel.bottomAnchor.constraint(equalTo: acceptButton.topAnchor, constant: -32),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            acceptButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            acceptButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            presentViewController2Button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            presentViewController2Button.centerYAnchor.constraint(equalTo: acceptButton.bottomAnchor, constant: 32),
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
    
    func didTapOnPresentViewController2Button() {
        present(DelegationPatternViewController2(),
                animated: true)
    }
}

