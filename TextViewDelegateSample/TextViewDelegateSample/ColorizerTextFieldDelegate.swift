//
//  ColorizerTextFieldDelegate.swift
//  TextViewDelegateSample
//
//  Created by Snehal Sutar on 8/3/16.
//  Copyright © 2016 Snehal Sutar. All rights reserved.
//

import Foundation
import UIKit

class ColorizerTextFieldDelegate : NSObject, UITextFieldDelegate {
    
    let colors : [String: UIColor] = [
        "red":UIColor.redColor(),
        "orange":  UIColor.orangeColor(),
        "yellow":  UIColor.yellowColor(),
        "green":  UIColor.greenColor(),
        "blue":  UIColor.blueColor(),
        "brown":  UIColor.brownColor(),
        "black":  UIColor.blackColor(),
        "purple":  UIColor.purpleColor(),
        "cyan" : UIColor.cyanColor(),
        "magenta" : UIColor.magentaColor(),
        "white" : UIColor.whiteColor()
    ]
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var colorsInTheText = [UIColor]()
        var newText:NSString
        
        newText = textField.text!
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
//        for(key: color) in self.colors{
//            if newText.rangeOfString(key, options: NSStringCompareOptions.CaseInsensitiveSearch).location != NSNotFound{
//                colorsInTheText.append(color)
//            }
//            
//        }
//        

        // For each dictionary entry in translations, pull out a string to search for
        
        for (key, color) in self.colors {
            
            if newText.rangeOfString(key, options: NSStringCompareOptions.CaseInsensitiveSearch).location != NSNotFound {
                colorsInTheText.append(color)
            }
        }
        
        // If we found any colors then blend them and set the text color
        
        if colorsInTheText.count > 0 {
            textField.textColor = self.blendColorArray(colorsInTheText)
        }
        return true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}