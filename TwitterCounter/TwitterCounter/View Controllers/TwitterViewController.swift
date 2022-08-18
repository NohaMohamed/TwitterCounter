//
//  ViewController.swift
//  TwitterCounter
//
//  Created by Noha Mohamed on 13/08/2022.
//

import UIKit
import CharactersCountView
import TwitterTextView

class TwitterViewController: UIViewController {
    //MARK: Outlets
    @IBOutlet weak var charactersTextView: TwitterTextView!
    @IBOutlet weak var charactersTypedView: CharactersCountView!
    @IBOutlet weak var charactersRemainingView: CharactersCountView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    //MARK: Setup views
    private func setupViews() {
        setupTextView()
        setupCharactersRemainingView()
        setupCharactersTypedView()
    }
    private func setupCharactersRemainingView(){
        charactersRemainingView.viewType = .remaining
        charactersRemainingView.setCharactersCount(charactersTextView.charchtersLimit)
        charactersRemainingView.setTitle(Localization.string(for: "remainingCharacters"))
    }
    private func setupCharactersTypedView(){
        charactersTypedView.setTotalCount(charactersTextView.charchtersLimit)
        charactersTypedView.setTitle(Localization.string(for: "typedCharacters"))
    }
    private func setupTextView(){
        charactersTextView.twitterTextViewDidChange = self
        charactersTextView.dropShadow(color: UIColor.black, opacity: 0.5)
    }
    @IBAction func clearText(_ sender: Any) {
        didChange(value: "")
        charactersTextView.clearTextView()
    }
}
extension TwitterViewController: TwitterTextViewDidChange {
    func didChange(value: String) {
        charactersTypedView.setCharactersCount(value.count)
        charactersRemainingView.setCharactersCount(charactersTextView.charchtersLimit - value.count)
    }
}
