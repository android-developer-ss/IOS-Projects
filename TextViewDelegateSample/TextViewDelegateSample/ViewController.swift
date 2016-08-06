//
//  ViewController.swift
//  TextViewDelegateSample
//
//  Created by Snehal Sutar on 8/3/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // Textfield and label outlets
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var characterCountLabel: UILabel!
    
    // Delegate instances
    let emojiDelegate = EmojiTextFieldDelegate()
    let colorizerDelegate = ColorizerTextFieldDelegate()
   
    //Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField1.delegate = emojiDelegate
        self.textField2.delegate = colorizerDelegate
        self.textField3.delegate = self
        
        
    }

    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var newText : NSString = textField.text!
        
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        self.characterCountLabel.hidden = (newText.length == 0)
        
        self.characterCountLabel.text = String(newText.length)
        
        // Returning true gives permission to modify the text in the textfield.
        return true;
    }


}

