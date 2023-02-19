//
//  ViewController.swift
//  UIKit17_Animations
//
//  Created by Home on 18/9/22.
//

import UIKit

class AnimationsViewController: UIViewController {
    /*let myView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGreen
        return view
    }()*/
    
    //var centerYConstraint: NSLayoutConstraint?
    
    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myView)
        
        title = "Animaciones"
        
        myView.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        myView.alpha = 0.0
        myView.center = view.center
        
        UIView.animate(withDuration: 2) {
            self.myView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
            self.myView.center = self.view.center
            self.myView.alpha = 1.0
            self.myView.layer.cornerRadius = 50
        }
    }
}

