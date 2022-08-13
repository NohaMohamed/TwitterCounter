//
//  CharchterCountsView.swift
//  TwitterCounter
//
//  Created by Noha Mohamed on 13/08/2022.
//

import UIKit

class CharchtersCountView: UIView {
    //MARK: Outlets
    @IBOutlet weak var viewTitleLabel: UILabel!
    @IBOutlet weak var charchtersTypedLabel: UILabel!
    @IBOutlet weak var slashLabel: UILabel!
    
    var viewType: CharchtersCountViewType?
}
