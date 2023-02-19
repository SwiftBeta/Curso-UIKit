//
//  ViewController.swift
//  UIKit14_Storyboards
//
//  Created by Home on 1/8/22.
//

import UIKit

class StoryboardViewController: UIViewController {


    @IBOutlet weak var swiftBetaButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        title = "Storyboard"
    } 


    @IBAction func didTapButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "StoryboardMain", bundle: nil)
        let viewController2 = storyboard.instantiateViewController(withIdentifier: "StoryboardViewController2_identifier")
        self.present(viewController2, animated: true)
        
        //swiftBetaButton.titleLabel?.textColor = .red
        //swiftBetaButton.titleLabel?.text = "SwiftBeta"
    }
}






