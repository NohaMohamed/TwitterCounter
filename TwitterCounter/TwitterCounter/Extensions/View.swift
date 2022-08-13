//
//  View.swift
//  TwitterCounter
//
//  Created by Noha Mohamed on 13/08/2022.
//

import UIKit
extension UIView {
    func dropShadow(color: UIColor, alpha: Float){
            layer.masksToBounds = false
            layer.shadowColor = color.cgColor
            layer.shadowOpacity = alpha
            layer.shadowOffset = CGSize.zero
    }
    @IBInspectable
    var viewCornerRadius: CGFloat{
        set{self.layer.cornerRadius = newValue;self.clipsToBounds = true}
        get{return self.viewCornerRadius}
    }
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
