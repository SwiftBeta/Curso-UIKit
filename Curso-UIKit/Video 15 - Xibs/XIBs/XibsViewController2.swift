//
//  ViewController2.swift
//  UIKit_15_XIBS
//
//  Created by Home on 25/8/22.
//

import UIKit

class XibsViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func navigateToViewController3(_ sender: Any) {
        let viewController3 = ViewController3(nibName: "XibsViewController3", bundle: nil)
        self.present(viewController3, animated: true)
    }
}
