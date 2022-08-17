//
//  UIButton+.swift
//  TwitterCounter
//
//  Created by Noha Mohamed on 18/08/2022.
//

import Foundation
import UIKit
extension UIButton {
    @IBInspectable
    var localizedTitle: String{
        get{
            return titleLabel?.text ?? ""
        }
        set{
            self.setTitle(Localization.string(for: newValue), for: .normal)
        }
    }
}
