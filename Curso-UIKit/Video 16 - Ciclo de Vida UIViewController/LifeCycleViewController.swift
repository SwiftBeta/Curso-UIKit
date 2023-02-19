//
//  ViewController.swift
//  UIKit16_CicloViewController
//
//  Created by Home on 13/9/22.
//

import UIKit

class LifeCycleViewController: UIViewController {
    deinit {
        print("🧹")
    }
    
    private lazy var swiftBetaButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Suscríbete a SwiftBeta"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { [weak self] action in
            self?.presentCurrentViewController()
            //self?.changeConstraintValue()
        }))
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration = configuration
        
        return button
    }()
    
    var buttonConstraint: NSLayoutConstraint?

    override func viewDidLoad() {
        super.viewDidLoad()
        print("1. viewDidLoad \(self.description)")
        
        view.backgroundColor = [.systemRed,.systemBlue,.systemCyan,.systemMint,.systemPink,.systemTeal,.systemBrown].randomElement()
        
        title = "Ciclo de Vida UIViewController"
        
        view.addSubview(swiftBetaButton)
        
        buttonConstraint = swiftBetaButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        NSLayoutConstraint.activate([
            swiftBetaButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonConstraint!
        ])
    }
    
    func presentCurrentViewController() {
        self.present(LifeCycleViewController(), animated: true)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("2. viewWillAppear \(self.description)")
    }
    
    func changeConstraintValue() {
        view.removeConstraint(buttonConstraint!)
        buttonConstraint = swiftBetaButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100)
        NSLayoutConstraint.activate([
            swiftBetaButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonConstraint!
        ])
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("3. viewWillLayoutSubviews \(self.description)")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("4. viewDidLayoutSubviews \(self.description)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("5. viewDidAppear \(self.description)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("6. viewWillDisappear \(self.description)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("7. viewDidDisappear \(self.description)")
    }

}

