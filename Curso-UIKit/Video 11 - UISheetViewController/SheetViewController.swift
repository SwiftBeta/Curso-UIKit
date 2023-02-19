//
//  SheetViewController.swift
//  Curso-UIKit
//
//  Created by Home on 19/2/23.
//

import Foundation
import UIKit

class SheetViewController: UIViewController {
    private let swiftBetaLabel: UILabel = {
        let label = UILabel()
        label.text = "¡Suscríbete a SwiftBeta!"
        label.font = .systemFont(ofSize: 32)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .purple
        view.addSubview(swiftBetaLabel)
        
        NSLayoutConstraint.activate([
            swiftBetaLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
        
        guard let presentationController = presentationController as? UISheetPresentationController else {
            return
        }
        presentationController.detents = [.medium(), .large()]
        presentationController.selectedDetentIdentifier = .medium
        presentationController.prefersGrabberVisible = true
        presentationController.preferredCornerRadius = 20
    }
}
