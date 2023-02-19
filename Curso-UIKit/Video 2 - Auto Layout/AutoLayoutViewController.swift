//
//  ViewController.swift
//  UIKit2-AutoLayout
//
//  Created by Home on 14/3/22.
//

import UIKit

class AutoLayoutViewController: UIViewController {
    
    override func loadView() {
        self.view = OnboardingView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Auto Layout"
    }
}

