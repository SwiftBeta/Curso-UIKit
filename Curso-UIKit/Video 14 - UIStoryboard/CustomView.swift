//
//  CustomView.swift
//  UIKit14_Storyboards
//
//  Created by Home on 3/8/22.
//

import UIKit

@IBDesignable
class CustomView: UIView {

    @IBInspectable
    var swiftbetaBackgroundColor: UIColor = .blue {
        didSet {
            backgroundColor = swiftbetaBackgroundColor
        }
    }

    @IBInspectable
    var swiftbetaBorderWidth: CGFloat = 1.0 {
        didSet {
            layer.borderWidth = swiftbetaBorderWidth
        }
    }
    
    override func prepareForInterfaceBuilder() {
        backgroundColor = swiftbetaBackgroundColor
        layer.borderWidth = swiftbetaBorderWidth
    }
}
