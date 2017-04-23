//
//  ViewController.swift
//  StackViewSampleRuntime
//
//  Created by Snehal Sutar on 4/22/17.
//  Copyright © 2017 Snehal Sutar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stack = stackView
        let index = stack.arrangedSubviews.count - 1
        let addView = stack.arrangedSubviews[index]
        
        let scroll = scrollView
        let offset = CGPoint(x: scroll.contentOffset.x,
                             y: scroll.contentOffset.y + addView.frame.size.height)
        
        let newView = createEntry()
        newView.hidden = true
        stack.insertArrangedSubview(newView, atIndex: index)
        
        UIView.animateWithDuration(0.25) { () -> Void in
            newView.hidden = false
            scroll.contentOffset = offset
        }
    }


}

