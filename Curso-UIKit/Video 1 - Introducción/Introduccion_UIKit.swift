//
//  Introducción_UIKit.swift
//  Curso-UIKit
//
//  Created by Home on 19/2/23.
//

import Foundation
import UIKit

class Introduccion_UIKit: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var subscribeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameLabel.textColor = .blue
        
        title = "Introducción UIKit"
    }
}
