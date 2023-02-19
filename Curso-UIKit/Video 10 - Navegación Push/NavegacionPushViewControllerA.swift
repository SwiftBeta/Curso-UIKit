//
//  ViewController.swift
//  UIKit10_NavigationPush
//
//  Created by Home on 17/5/22.
//

import UIKit

class NavegacionPushViewControllerA: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        title = "Navegación Push"
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next",
                                                                 style: .done,
                                                                 target: self,
                                                                 action: #selector(nextViewController))
    }


    @objc
    private func nextViewController() {
        self.navigationController?.pushViewController(NavegacionPushViewControllerB(),
                                                      animated: true)
    }
}

