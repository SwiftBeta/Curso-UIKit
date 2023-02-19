//
//  ViewController.swift
//  UIKit20_ChildViewController
//
//  Created by Home on 25/9/22.
//

import UIKit

class ChildViewController: UIViewController {
    
    private lazy var createRequestButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("🤩 Suscríbete a SwiftBeta 🤩", for: .normal)
        button.addTarget(self, action: #selector(executeHTTP), for: .touchDown)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = .white
        
        title = "Child ViewController"
        
        view.addSubview(createRequestButton)
        
        NSLayoutConstraint.activate([
            createRequestButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            createRequestButton.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20)
        ])
    }

    @objc func executeHTTP() {
        // Añadir ActivityIndicatorViewController
        let activityIndicatorViewController = ActivityIndicatorViewController()
        view.addSubview(activityIndicatorViewController.view)
        addChild(activityIndicatorViewController)
        activityIndicatorViewController.didMove(toParent: self)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            // Borrar ActivityIndicatorViewController
            activityIndicatorViewController.willMove(toParent: nil)
            activityIndicatorViewController.removeFromParent()
            activityIndicatorViewController.view.removeFromSuperview()
        }
    }
}

