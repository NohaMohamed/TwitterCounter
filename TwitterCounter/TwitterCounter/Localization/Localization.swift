//
//  g.swift
//  TwitterCounter
//
//  Created by Noha Mohamed on 17/08/2022.
//

import Foundation
struct Localization {
    static func string(for key: String) -> String {
        NSLocalizedString(key, comment: "")
    }
}
