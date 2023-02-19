//
//  ViewController.swift
//  UIKit_15_XIBS
//
//  Created by Home on 25/8/22.
//

import UIKit

class XibsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "XIBS"
    }

    @IBAction func didTapOnButton() {
        let viewController2 = XibsViewController2(nibName: "XibsViewController2", bundle: nil)
        self.present(viewController2, animated: true)
    }
}

