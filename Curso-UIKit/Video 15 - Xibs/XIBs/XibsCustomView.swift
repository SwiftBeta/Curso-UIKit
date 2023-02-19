//
//  CustomView.swift
//  UIKit_15_XIBS
//
//  Created by Home on 25/8/22.
//

import UIKit

class XibsCustomView: UIView {

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        let nib = UINib(nibName: "XibsCustomView", bundle: nil)
        guard let customView = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
            fatalError("Error instantiating CustomView")
        }
        addSubview(customView)
    }

}
