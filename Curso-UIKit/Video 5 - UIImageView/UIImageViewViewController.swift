//
//  UIImageViewViewController.swift
//  Curso-UIKit
//
//  Created by Home on 19/2/23.
//

import Foundation
import UIKit

class UIImageViewViewController: UIViewController {
    
    private let swiftBetaImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "gamecontroller.fill")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .purple
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.layer.cornerRadius = 150
        imageView.layer.borderWidth = 10
        imageView.layer.borderColor = UIColor.blue.cgColor
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        title = "UIImageView"
        
        view.addSubview(swiftBetaImageView)
        
        NSLayoutConstraint.activate([
            swiftBetaImageView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            swiftBetaImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaImageView.widthAnchor.constraint(equalToConstant: 300),
            swiftBetaImageView.heightAnchor.constraint(equalToConstant: 300),
        ])
    }
}
