//
//  ViewController.swift
//  TwitterCounter
//
//  Created by Noha Mohamed on 13/08/2022.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Outlets
    @IBOutlet weak var charchtersTypedView: CharchtersCountView!
    @IBOutlet weak var charchtersTextView: UITextView!
    @IBOutlet weak var charchtersRemainingView: CharchtersCountView!
    
    //MARK: Variables
    private let charchterLimit = 280
    
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
        charchtersRemainingView.setText(charchterLimit)
    }
    private func setupTextView(){
        charchtersTextView.delegate = self
        charchtersTextView.dropShadow(color: UIColor.black, opacity: 0.5)
        
    }
    
}
extension ViewController: UITextViewDelegate{
    func textViewDidChange(_ textView: UITextView) {
        charchtersTypedView.setText(textView.text.count)
        charchtersRemainingView.setText(charchterLimit - textView.text.count)
    }
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        return self.textLimit(existingText: textView.text,
                              newText: text,
                              limit: charchterLimit)
    }
    private func textLimit(existingText: String?,
                           newText: String,
                           limit: Int) -> Bool {
        let text = existingText ?? ""
        let isAtLimit = text.count + newText.count <= limit
        return isAtLimit
    }
}
