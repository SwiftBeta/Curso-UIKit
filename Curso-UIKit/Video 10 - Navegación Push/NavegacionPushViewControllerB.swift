//
//  ViewControllerB.swift
//  UIKit10_NavigationPush
//
//  Created by Home on 17/5/22.
//

import UIKit

class NavegacionPushViewControllerB: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        title = "View Controller B"
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next",
                                                                 style: .done,
                                                                 target: self,
                                                                 action: #selector(nextViewController))
    }


    @objc
    private func nextViewController() {
        self.navigationController?.pushViewController(NavegacionPushViewControllerC(),
                                                      animated: true)
    }
}
