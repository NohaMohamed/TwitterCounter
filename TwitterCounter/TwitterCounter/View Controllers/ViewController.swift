//
//  ViewController.swift
//  TwitterCounter
//
//  Created by Noha Mohamed on 13/08/2022.
//

import UIKit
import CharchtersCountView
import TwitterTextView

class ViewController: UIViewController {
    //MARK: Outlets
    @IBOutlet weak var charchtersTypedView: CharchtersCountView!
    @IBOutlet weak var charchtersTextView: TwitterTextView!
    @IBOutlet weak var charchtersRemainingView: CharchtersCountView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    private func setupViews() {
        setupTextView()
        setupCharchterRemainingView()
    }
    private func setupCharchterRemainingView(){
        charchtersRemainingView.viewType = .remaining
        charchtersRemainingView.setCharchtersCount(charchtersTextView.charchtersLimit)
    }
    private func setupTextView(){
        charchtersTextView.twitterTextViewDidChange = self
        charchtersTextView.dropShadow(color: UIColor.black, opacity: 0.5)
    }
    
}
extension ViewController: TwitterTextViewDidChange {
    func didChange(value: String) {
        charchtersTypedView.setCharchtersCount(value.count)
        charchtersRemainingView.setCharchtersCount(charchtersTextView.charchtersLimit - value.count)
    }
}
