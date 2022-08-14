//
//  View.swift
//  TwitterCounter
//
//  Created by Noha Mohamed on 13/08/2022.
//

import UIKit
extension UIView {
    func dropShadow(color: UIColor, opacity: Float){
            layer.masksToBounds = false
            layer.shadowColor = color.cgColor
            layer.shadowOpacity = opacity
            layer.shadowOffset = CGSize.zero
            layer.shadowRadius = 1
    }
    @IBInspectable
    var viewCornerRadius: CGFloat{
        set{self.layer.cornerRadius = newValue;self.clipsToBounds = true}
        get{return self.viewCornerRadius}
    }
    @IBInspectable
    var borderColor: UIColor{
        set{self.layer.borderColor = newValue.cgColor}
        get{return self.borderColor}
    }
    @IBInspectable
    var borderWidth: CGFloat{
        set{self.layer.borderWidth = newValue}
        get{return self.layer.borderWidth}
    }
}
