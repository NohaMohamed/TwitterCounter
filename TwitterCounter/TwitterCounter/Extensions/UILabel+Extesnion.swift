//
//  Strings+Extesnions.swift
//  TwitterCounter
//
//  Created by Noha Mohamed on 17/08/2022.
//

import UIKit

extension UILabel{
    @IBInspectable
    var localizedText:String{
        get{
            return text ?? ""
        }
        set{
            text = Localization.string(for: newValue)
        }
    }
}
