//
//  EmojiTextFieldDelegate.swift
//  TextViewDelegateSample
//
//  Created by Snehal Sutar on 8/4/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import Foundation
import UIKit

class EmojiTextFieldDelegate: NSObject, UITextFieldDelegate {
    var translations = [String : String]()
    
    override init() {
        super.init()
        translations["heart"] =  "\u{0001F496}"
        translations["fish"] = "\u{E522}"
        translations["bird"] = "\u{E523}"
        translations["frog"] = "\u{E531}"
        translations["bear"] = "\u{E527}"
        translations["dog"] = "\u{E052}"
        translations["cat"] = "\u{E04F}"
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        var replacedAnEmoji = false
        var emojiStringRange: NSRange
        
        var newText = textField.text! as NSString
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        
        for (emojiString, emoji) in translations {
            repeat{
                emojiStringRange = newText.rangeOfString(emojiString, options: NSStringCompareOptions.CaseInsensitiveSearch)
                if emojiStringRange.location != NSNotFound {
                    newText = newText.stringByReplacingCharactersInRange(emojiStringRange, withString: emoji)
                    replacedAnEmoji = true
                }
            } while emojiStringRange.location != NSNotFound
        }
        
        if replacedAnEmoji {
            textField.text = newText as String
        }
        
    }
}